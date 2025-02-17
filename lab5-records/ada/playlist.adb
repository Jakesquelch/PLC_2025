with Ada.Integer_Text_IO;   use Ada.Integer_Text_IO;
with Ada.Float_Text_IO;     use Ada.Float_Text_IO;
with Ada.Text_IO;           use Ada.Text_IO;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;

procedure PlayList is

    type Person is record
        name : Unbounded_String;
    end record;

    procedure Put_Person (p : Person) is
    begin
        Put (To_String (p.name));
    end Put_Person;

    -- Define an enum for Item variants
    type Item_kind is (Piece, Pause);

    type Item (Kind : Item_Kind) is record
      case Kind is   
         when Piece => 
            name        : Unbounded_String;
            performer   : Person;
            length_secs : Float;
         when Pause =>
            length_secs2 : Float;
      end case;
    end record;

    procedure Put_Item (i : Item) is
    begin
      case i.Kind is 
         when Piece =>
            Put (To_String (i.name));
            Put (" by ");
            Put_Person (i.performer);
            Put (" (");
            Put (i.length_secs, aft => 1, exp => 0);
            Put ("s)");
         when Pause =>
            Put ("Pause (");
            Put (i.length_secs2, aft => 1, exp => 0);
            Put ("s)");
      end case;
    end Put_Item;

    piece1 : Item :=
       (
        Kind => Piece,
        name => To_Unbounded_String ("Moonlight Sonata"),
        performer => (name => To_Unbounded_String ("Claudio Arrau")),
        length_secs => 17.0*60.0+26.0
       );

    pause1 : Item :=
       (
         Kind => Pause,
         length_secs2 => 5.0
       );

begin
    Put_Item (piece1);
    Put_Line ("");
    Put_Item(pause1);
    Put_Line ("");
end PlayList;

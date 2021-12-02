tableextension 50001 ITB_Customer extends Customer

{
    fields
    {
        field(50000; InvenGroup; Text[10])
        {
            Caption = 'LagGruppe';
            TableRelation = "Inventory Posting Group";

        }

    }

}

using GameService as service from '../../srv/game-service';

annotate service.Student with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Student_ID',
            Value : Student_ID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'First_name',
            Value : First_name,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Last_name',
            Value : Last_name,
        },
    ],
    UI.SelectionFields : [
        Student_ID,
    ],
    UI.FieldGroup #Favorietegames : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : to_favos.to_game.Name,
                Label : 'Name',
            },
            {
                $Type : 'UI.DataField',
                Value : to_favos.to_game.Genre,
                Label : 'Genre',
            },
            {
                $Type : 'UI.DataField',
                Value : to_favos.to_game.Description,
                Label : 'Description',
            },
        ],
    },
    UI.HeaderFacets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'Header',
            Target : '@UI.FieldGroup#Header',
        },
    ],
    UI.FieldGroup #Header : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : Last_name,
            },
        ],
    },
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : First_name,
        },
        TypeName : '',
        TypeNamePlural : '',
    },
);
annotate service.Student with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Student_ID',
                Value : Student_ID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'First_name',
                Value : First_name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Last_name',
                Value : Last_name,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Favoriete games',
            ID : 'Favorietegames',
            Target : 'to_favos/@UI.LineItem#Favorietegames',
        },
    ]
);
annotate service.Student with {
    Student_ID @Common.Label : 'Student_ID'
};

annotate service.FavoriteGame with @(
    UI.LineItem #Favorietegames : [
        {
            $Type : 'UI.DataField',
            Value : to_game.Cover_url,
            Label : 'Cover',
        },
        {
            $Type : 'UI.DataField',
            Value : to_game.Name,
            Label : 'Name',
        },
        {
            $Type : 'UI.DataField',
            Value : to_game.Genre,
            Label : 'Genre',
        },
        {
            $Type : 'UI.DataField',
            Value : to_game.Description,
            Label : 'Description',
        },
        {
            $Type : 'UI.DataField',
            Value : to_game.Platform,
            Label : 'Platform',
        },
    ]
);

annotate service.Game with {
    Cover_url @UI.IsImageURL : true
};


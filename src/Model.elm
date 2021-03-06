module Model exposing (Model, Note, Tag, emptyNote)


type alias Tag =
    String


type alias Note =
    { id : String
    , content : String
    , tags : List Tag
    , title : String
    }


type alias Model =
    { displayMarkdown : Bool
    , messages : List String
    , currentNote : Maybe Note
    , currentTag : Maybe Tag
    , notes : List Note
    , tags : List Tag
    , searchStr : Maybe String
    }


emptyNote : Note
emptyNote =
    Note "" "" [] ""

.class public Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;
.super Ljava/lang/Object;
.source "BasicDocumentParsingResult.java"

# interfaces
.implements Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler;
.implements Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResultHandler<",
        "TT;>;",
        "Lcom/subgraph/orchid/directory/parsing/DocumentParsingResult<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final documents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private invalidDocument:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private isError:Z

.field private isInvalid:Z

.field private isOkay:Z

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->documents:Ljava/util/List;

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->isOkay:Z

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->isInvalid:Z

    .line 19
    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->isError:Z

    const-string v0, ""

    .line 20
    iput-object v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public documentInvalid(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->isOkay:Z

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->isInvalid:Z

    .line 61
    iput-object p1, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->invalidDocument:Ljava/lang/Object;

    .line 62
    iput-object p2, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->message:Ljava/lang/String;

    return-void
.end method

.method public documentParsed(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->documents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getDocument()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->documents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->documents:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getInvalidDocument()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->invalidDocument:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getParsedDocuments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->documents:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isError()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->isError:Z

    return v0
.end method

.method public isInvalid()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->isInvalid:Z

    return v0
.end method

.method public isOkay()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->isOkay:Z

    return v0
.end method

.method public parsingError(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->isOkay:Z

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->isError:Z

    .line 68
    iput-object p1, p0, Lcom/subgraph/orchid/directory/parsing/BasicDocumentParsingResult;->message:Ljava/lang/String;

    return-void
.end method

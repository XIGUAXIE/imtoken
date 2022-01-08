.class public Lcom/subgraph/orchid/directory/parsing/DocumentObject;
.super Ljava/lang/Object;
.source "DocumentObject.java"


# instance fields
.field private bodyContent:Ljava/lang/String;

.field private footerLine:Ljava/lang/String;

.field private final headerLine:Ljava/lang/String;

.field private final keyword:Ljava/lang/String;

.field private final stringContent:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->keyword:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->headerLine:Ljava/lang/String;

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->stringContent:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public addContent(Ljava/lang/String;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->stringContent:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object p1, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->stringContent:Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public addFooterLine(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->footerLine:Ljava/lang/String;

    .line 28
    iget-object p1, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->stringContent:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->bodyContent:Ljava/lang/String;

    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 32
    invoke-virtual {p0, v0}, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->getContent(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContent(Z)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->headerLine:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->bodyContent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->footerLine:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->bodyContent:Ljava/lang/String;

    return-object p1
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/subgraph/orchid/directory/parsing/DocumentObject;->keyword:Ljava/lang/String;

    return-object v0
.end method

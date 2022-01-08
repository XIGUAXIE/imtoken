.class public abstract Lcom/drew/imaging/mp4/Mp4Handler;
.super Ljava/lang/Object;
.source "Mp4Handler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/drew/metadata/mp4/Mp4Directory;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected directory:Lcom/drew/metadata/mp4/Mp4Directory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected metadata:Lcom/drew/metadata/Metadata;


# direct methods
.method public constructor <init>(Lcom/drew/metadata/Metadata;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/drew/imaging/mp4/Mp4Handler;->metadata:Lcom/drew/metadata/Metadata;

    .line 42
    invoke-virtual {p0}, Lcom/drew/imaging/mp4/Mp4Handler;->getDirectory()Lcom/drew/metadata/mp4/Mp4Directory;

    move-result-object v0

    iput-object v0, p0, Lcom/drew/imaging/mp4/Mp4Handler;->directory:Lcom/drew/metadata/mp4/Mp4Directory;

    .line 43
    invoke-virtual {p1, v0}, Lcom/drew/metadata/Metadata;->addDirectory(Lcom/drew/metadata/Directory;)V

    return-void
.end method


# virtual methods
.method public addError(Ljava/lang/String;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/drew/imaging/mp4/Mp4Handler;->directory:Lcom/drew/metadata/mp4/Mp4Directory;

    invoke-virtual {v0, p1}, Lcom/drew/metadata/mp4/Mp4Directory;->addError(Ljava/lang/String;)V

    return-void
.end method

.method protected abstract getDirectory()Lcom/drew/metadata/mp4/Mp4Directory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract processBox(Lcom/drew/metadata/mp4/boxes/Box;[B)Lcom/drew/imaging/mp4/Mp4Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected processContainer(Lcom/drew/metadata/mp4/boxes/Box;)Lcom/drew/imaging/mp4/Mp4Handler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 57
    invoke-virtual {p0, p1, v0}, Lcom/drew/imaging/mp4/Mp4Handler;->processBox(Lcom/drew/metadata/mp4/boxes/Box;[B)Lcom/drew/imaging/mp4/Mp4Handler;

    move-result-object p1

    return-object p1
.end method

.method protected abstract shouldAcceptBox(Lcom/drew/metadata/mp4/boxes/Box;)Z
.end method

.method protected abstract shouldAcceptContainer(Lcom/drew/metadata/mp4/boxes/Box;)Z
.end method

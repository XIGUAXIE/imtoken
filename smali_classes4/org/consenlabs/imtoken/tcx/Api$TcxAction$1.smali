.class Lorg/consenlabs/imtoken/tcx/Api$TcxAction$1;
.super Lcom/google/protobuf/AbstractParser;
.source "Api.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/tcx/Api$TcxAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractParser<",
        "Lorg/consenlabs/imtoken/tcx/Api$TcxAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 773
    invoke-direct {p0}, Lcom/google/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 773
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$TcxAction$1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$TcxAction;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$TcxAction;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 779
    new-instance v0, Lorg/consenlabs/imtoken/tcx/Api$TcxAction;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/consenlabs/imtoken/tcx/Api$TcxAction;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/tcx/Api$1;)V

    return-object v0
.end method

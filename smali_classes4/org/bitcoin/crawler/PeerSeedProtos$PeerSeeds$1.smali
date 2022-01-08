.class final Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$1;
.super Lcom/google/protobuf/AbstractParser;
.source "PeerSeedProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractParser<",
        "Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 825
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

    .line 825
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds$1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 830
    new-instance v0, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/bitcoin/crawler/PeerSeedProtos$PeerSeeds;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/crawler/PeerSeedProtos$1;)V

    return-object v0
.end method

.class final Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$1;
.super Lcom/google/protobuf/AbstractParser;
.source "PeerSeedProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractParser<",
        "Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1764
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

    .line 1764
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds$1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1769
    new-instance v0, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/bitcoin/crawler/PeerSeedProtos$SignedPeerSeeds;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/crawler/PeerSeedProtos$1;)V

    return-object v0
.end method

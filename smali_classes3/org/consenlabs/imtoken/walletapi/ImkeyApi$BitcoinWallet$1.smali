.class Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$1;
.super Lcom/google/protobuf/AbstractParser;
.source "ImkeyApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractParser<",
        "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 7875
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

    .line 7875
    invoke-virtual {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    move-result-object p1

    return-object p1
.end method

.method public parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7881
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    return-object v0
.end method

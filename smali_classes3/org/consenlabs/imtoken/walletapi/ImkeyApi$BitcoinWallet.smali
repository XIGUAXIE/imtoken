.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ImkeyApi.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWalletOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BitcoinWallet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x3

.field public static final CHAINTYPE_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

.field public static final ENCXPUB_FIELD_NUMBER:I = 0x4

.field public static final EXTERNALADDRESS_FIELD_NUMBER:I = 0x5

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private volatile address_:Ljava/lang/Object;

.field private volatile chainType_:Ljava/lang/Object;

.field private volatile encXPub_:Ljava/lang/Object;

.field private externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

.field private memoizedIsInitialized:B

.field private volatile path_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7867
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    .line 7875
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$1;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$1;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6770
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 7043
    iput-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->memoizedIsInitialized:B

    const-string v0, ""

    .line 6771
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->path_:Ljava/lang/Object;

    .line 6772
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->chainType_:Ljava/lang/Object;

    .line 6773
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->address_:Ljava/lang/Object;

    .line 6774
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->encXPub_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6793
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;-><init>()V

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    .line 6798
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-nez v2, :cond_8

    .line 6802
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    const/16 v5, 0xa

    if-eq v3, v5, :cond_6

    const/16 v5, 0x12

    if-eq v3, v5, :cond_5

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_4

    const/16 v5, 0x22

    if-eq v3, v5, :cond_3

    const/16 v5, 0x2a

    if-eq v3, v5, :cond_1

    .line 6845
    invoke-virtual {p0, p1, v1, p2, v3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 6833
    :cond_1
    iget-object v3, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    if-eqz v3, :cond_2

    .line 6834
    iget-object v3, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    invoke-virtual {v3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v0

    .line 6836
    :goto_1
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->parser()Lcom/google/protobuf/Parser;

    move-result-object v4

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    iput-object v4, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    if-eqz v3, :cond_0

    .line 6838
    invoke-virtual {v3, v4}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    .line 6839
    invoke-virtual {v3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->buildPartial()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v3

    iput-object v3, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    goto :goto_0

    .line 6826
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 6828
    iput-object v3, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->encXPub_:Ljava/lang/Object;

    goto :goto_0

    .line 6820
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 6822
    iput-object v3, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->address_:Ljava/lang/Object;

    goto :goto_0

    .line 6814
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 6816
    iput-object v3, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->chainType_:Ljava/lang/Object;

    goto :goto_0

    .line 6808
    :cond_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v3

    .line 6810
    iput-object v3, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->path_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
    :goto_2
    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 6856
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 6857
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 6854
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6859
    :goto_3
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 6860
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->makeExtensionsImmutable()V

    .line 6861
    throw p1

    .line 6859
    :cond_8
    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 6860
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->makeExtensionsImmutable()V

    return-void

    .line 6795
    :cond_9
    throw v0
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6761
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageV3$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 6768
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 7043
    iput-byte p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 6761
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$11900()Z
    .locals 1

    .line 6761
    sget-boolean v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$12100(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;)Ljava/lang/Object;
    .locals 0

    .line 6761
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->path_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$12102(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6761
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->path_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12200(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;)Ljava/lang/Object;
    .locals 0

    .line 6761
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->chainType_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$12202(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6761
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->chainType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12300(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;)Ljava/lang/Object;
    .locals 0

    .line 6761
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->address_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$12302(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6761
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->address_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12400(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;)Ljava/lang/Object;
    .locals 0

    .line 6761
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->encXPub_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$12402(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6761
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->encXPub_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$12502(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;
    .locals 0

    .line 6761
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    return-object p1
.end method

.method static synthetic access$12600(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 6761
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$12700()Lcom/google/protobuf/Parser;
    .locals 1

    .line 6761
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$12800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 6761
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$12900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 6761
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$13000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 6761
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$13100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 6761
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;
    .locals 1

    .line 7871
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6865
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$11500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 1

    .line 7226
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 1

    .line 7229
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7199
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->PARSER:Lcom/google/protobuf/Parser;

    .line 7200
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7206
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->PARSER:Lcom/google/protobuf/Parser;

    .line 7207
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7167
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7173
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7212
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->PARSER:Lcom/google/protobuf/Parser;

    .line 7213
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7219
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->PARSER:Lcom/google/protobuf/Parser;

    .line 7220
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7187
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->PARSER:Lcom/google/protobuf/Parser;

    .line 7188
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7194
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->PARSER:Lcom/google/protobuf/Parser;

    .line 7195
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7156
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7162
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7177
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7183
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;",
            ">;"
        }
    .end annotation

    .line 7886
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 7107
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    if-nez v1, :cond_1

    .line 7108
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 7110
    :cond_1
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    .line 7112
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 7113
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 7114
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getChainType()Ljava/lang/String;

    move-result-object v1

    .line 7115
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getChainType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 7116
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 7117
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 7118
    :cond_4
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getEncXPub()Ljava/lang/String;

    move-result-object v1

    .line 7119
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getEncXPub()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 7120
    :cond_5
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->hasExternalAddress()Z

    move-result v1

    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->hasExternalAddress()Z

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 7121
    :cond_6
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->hasExternalAddress()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 7122
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getExternalAddress()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v1

    .line 7123
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getExternalAddress()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 7125
    :cond_7
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    .line 6955
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->address_:Ljava/lang/Object;

    .line 6956
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6957
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 6959
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6961
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6962
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->address_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 6972
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->address_:Ljava/lang/Object;

    .line 6973
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6974
    check-cast v0, Ljava/lang/String;

    .line 6975
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6977
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->address_:Ljava/lang/Object;

    return-object v0

    .line 6980
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getChainType()Ljava/lang/String;
    .locals 2

    .line 6919
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->chainType_:Ljava/lang/Object;

    .line 6920
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6921
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 6923
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6925
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6926
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->chainType_:Ljava/lang/Object;

    return-object v0
.end method

.method public getChainTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 6936
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->chainType_:Ljava/lang/Object;

    .line 6937
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6938
    check-cast v0, Ljava/lang/String;

    .line 6939
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6941
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->chainType_:Ljava/lang/Object;

    return-object v0

    .line 6944
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 6761
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 6761
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;
    .locals 1

    .line 7896
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    return-object v0
.end method

.method public getEncXPub()Ljava/lang/String;
    .locals 2

    .line 6991
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->encXPub_:Ljava/lang/Object;

    .line 6992
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6993
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 6995
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6997
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6998
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->encXPub_:Ljava/lang/Object;

    return-object v0
.end method

.method public getEncXPubBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 7008
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->encXPub_:Ljava/lang/Object;

    .line 7009
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 7010
    check-cast v0, Ljava/lang/String;

    .line 7011
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 7013
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->encXPub_:Ljava/lang/Object;

    return-object v0

    .line 7016
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getExternalAddress()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;
    .locals 1

    .line 7034
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExternalAddressOrBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressOrBuilder;
    .locals 1

    .line 7040
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getExternalAddress()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v0

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;",
            ">;"
        }
    .end annotation

    .line 7891
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 6883
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->path_:Ljava/lang/Object;

    .line 6884
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6885
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 6887
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6889
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6890
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->path_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 6900
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->path_:Ljava/lang/Object;

    .line 6901
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6902
    check-cast v0, Ljava/lang/String;

    .line 6903
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6905
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->path_:Ljava/lang/Object;

    return-object v0

    .line 6908
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 7077
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 7081
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 7082
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->path_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7084
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getChainTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 7085
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->chainType_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7087
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 7088
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->address_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7090
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getEncXPubBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 7091
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->encXPub_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7093
    :cond_4
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 7095
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getExternalAddress()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7097
    :cond_5
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 7098
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 6787
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasExternalAddress()Z
    .locals 1

    .line 7027
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 7131
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 7132
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 7135
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 7137
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 7139
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getChainType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 7141
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 7143
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getEncXPub()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7144
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->hasExternalAddress()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 7146
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getExternalAddress()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v1

    invoke-virtual {v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 7148
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 7149
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 6871
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$11600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    .line 6872
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 7046
    iget-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 7050
    :cond_1
    iput-byte v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 6761
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 6761
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6761
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 1

    .line 7224
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 2

    .line 7240
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 6781
    new-instance p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 6761
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6761
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;
    .locals 2

    .line 7233
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 7234
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7057
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 7058
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->path_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7060
    :cond_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getChainTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 7061
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->chainType_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7063
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 7064
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->address_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7066
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getEncXPubBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 7067
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->encXPub_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 7069
    :cond_3
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->externalAddress_:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 7070
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->getExternalAddress()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 7072
    :cond_4
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$BitcoinWallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

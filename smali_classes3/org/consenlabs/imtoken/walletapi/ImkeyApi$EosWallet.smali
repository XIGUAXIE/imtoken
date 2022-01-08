.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ImkeyApi.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWalletOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EosWallet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;,
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfoOrBuilder;
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x2

.field public static final CHAINTYPE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;",
            ">;"
        }
    .end annotation
.end field

.field public static final PUBLICKEYS_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private volatile address_:Ljava/lang/Object;

.field private volatile chainType_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private publicKeys_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9813
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    .line 9821
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$1;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$1;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 7965
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 9027
    iput-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->memoizedIsInitialized:B

    const-string v0, ""

    .line 7966
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->chainType_:Ljava/lang/Object;

    .line 7967
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->address_:Ljava/lang/Object;

    .line 7968
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->publicKeys_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7987
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;-><init>()V

    if-eqz p2, :cond_9

    .line 7993
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_7

    .line 7997
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_5

    const/16 v5, 0xa

    if-eq v4, v5, :cond_4

    const/16 v5, 0x12

    if-eq v4, v5, :cond_3

    const/16 v5, 0x1a

    if-eq v4, v5, :cond_1

    .line 8024
    invoke-virtual {p0, p1, v0, p2, v4}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v2, 0x1

    if-nez v4, :cond_2

    .line 8016
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->publicKeys_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 8019
    :cond_2
    iget-object v4, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->publicKeys_:Ljava/util/List;

    .line 8020
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->parser()Lcom/google/protobuf/Parser;

    move-result-object v5

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    check-cast v5, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    .line 8019
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8009
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 8011
    iput-object v4, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->address_:Ljava/lang/Object;

    goto :goto_0

    .line 8003
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v4

    .line 8005
    iput-object v4, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->chainType_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 8035
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 8036
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 8033
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-eqz p2, :cond_6

    .line 8039
    iget-object p2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->publicKeys_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->publicKeys_:Ljava/util/List;

    .line 8041
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 8042
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->makeExtensionsImmutable()V

    .line 8043
    throw p1

    :cond_7
    and-int/lit8 p1, v2, 0x1

    if-eqz p1, :cond_8

    .line 8039
    iget-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->publicKeys_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->publicKeys_:Ljava/util/List;

    .line 8041
    :cond_8
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 8042
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->makeExtensionsImmutable()V

    return-void

    :cond_9
    const/4 p1, 0x0

    .line 7989
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7956
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 7963
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 9027
    iput-byte p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 7956
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$15200()Z
    .locals 1

    .line 7956
    sget-boolean v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$15400(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;)Ljava/lang/Object;
    .locals 0

    .line 7956
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->chainType_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$15402(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7956
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->chainType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15500(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;)Ljava/lang/Object;
    .locals 0

    .line 7956
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->address_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$15502(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 7956
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->address_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$15600(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;)Ljava/util/List;
    .locals 0

    .line 7956
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->publicKeys_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$15602(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 7956
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->publicKeys_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$15700()Z
    .locals 1

    .line 7956
    sget-boolean v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$15800(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 7956
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$15900()Lcom/google/protobuf/Parser;
    .locals 1

    .line 7956
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$16000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 7956
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$16100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 7956
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;
    .locals 1

    .line 9817
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8047
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$13300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 1

    .line 9187
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 1

    .line 9190
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9160
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->PARSER:Lcom/google/protobuf/Parser;

    .line 9161
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9167
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->PARSER:Lcom/google/protobuf/Parser;

    .line 9168
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9128
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9134
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9173
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->PARSER:Lcom/google/protobuf/Parser;

    .line 9174
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9180
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->PARSER:Lcom/google/protobuf/Parser;

    .line 9181
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9148
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->PARSER:Lcom/google/protobuf/Parser;

    .line 9149
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9155
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->PARSER:Lcom/google/protobuf/Parser;

    .line 9156
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9117
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9123
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9138
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9144
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;",
            ">;"
        }
    .end annotation

    .line 9832
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 9079
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    if-nez v1, :cond_1

    .line 9080
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 9082
    :cond_1
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    .line 9084
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getChainType()Ljava/lang/String;

    move-result-object v1

    .line 9085
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getChainType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 9086
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 9087
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 9088
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getPublicKeysList()Ljava/util/List;

    move-result-object v1

    .line 9089
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getPublicKeysList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 9090
    :cond_4
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    .line 8963
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->address_:Ljava/lang/Object;

    .line 8964
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8965
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 8967
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8969
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 8970
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->address_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 8980
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->address_:Ljava/lang/Object;

    .line 8981
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8982
    check-cast v0, Ljava/lang/String;

    .line 8983
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8985
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->address_:Ljava/lang/Object;

    return-object v0

    .line 8988
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getChainType()Ljava/lang/String;
    .locals 2

    .line 8927
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->chainType_:Ljava/lang/Object;

    .line 8928
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8929
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 8931
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8933
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 8934
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->chainType_:Ljava/lang/Object;

    return-object v0
.end method

.method public getChainTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 8944
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->chainType_:Ljava/lang/Object;

    .line 8945
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8946
    check-cast v0, Ljava/lang/String;

    .line 8947
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8949
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->chainType_:Ljava/lang/Object;

    return-object v0

    .line 8952
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 7956
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 7956
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;
    .locals 1

    .line 9842
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;",
            ">;"
        }
    .end annotation

    .line 9837
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPublicKeys(I)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;
    .locals 1

    .line 9017
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->publicKeys_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    return-object p1
.end method

.method public getPublicKeysCount()I
    .locals 1

    .line 9011
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->publicKeys_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPublicKeysList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;",
            ">;"
        }
    .end annotation

    .line 8998
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->publicKeys_:Ljava/util/List;

    return-object v0
.end method

.method public getPublicKeysOrBuilder(I)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfoOrBuilder;
    .locals 1

    .line 9024
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->publicKeys_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfoOrBuilder;

    return-object p1
.end method

.method public getPublicKeysOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9005
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->publicKeys_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 9055
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 9059
    :cond_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getChainTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 9060
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->chainType_:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 9062
    :goto_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x2

    .line 9063
    iget-object v3, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->address_:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9065
    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->publicKeys_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x3

    .line 9066
    iget-object v3, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->publicKeys_:Ljava/util/List;

    .line 9067
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9069
    :cond_3
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 9070
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 7981
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 9096
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 9097
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 9100
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 9102
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getChainType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 9104
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9105
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getPublicKeysCount()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 9107
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getPublicKeysList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    mul-int/lit8 v0, v0, 0x1d

    .line 9109
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 9110
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 8053
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$13400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    .line 8054
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 9030
    iget-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 9034
    :cond_1
    iput-byte v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 7956
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7956
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 7956
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 1

    .line 9185
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 2

    .line 9201
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 7975
    new-instance p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 7956
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 7956
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;
    .locals 2

    .line 9194
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 9195
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9041
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getChainTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9042
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->chainType_:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 9044
    :cond_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 9045
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->address_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    :cond_1
    const/4 v0, 0x0

    .line 9047
    :goto_0
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->publicKeys_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    .line 9048
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->publicKeys_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9050
    :cond_2
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ImkeyApi.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddressResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x3

.field public static final CHAINTYPE_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x1

.field private static final serialVersionUID:J


# instance fields
.field private volatile address_:Ljava/lang/Object;

.field private volatile chainType_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile path_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3775
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    .line 3783
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$1;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$1;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2999
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 3193
    iput-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->memoizedIsInitialized:B

    const-string v0, ""

    .line 3000
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->path_:Ljava/lang/Object;

    .line 3001
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->chainType_:Ljava/lang/Object;

    .line 3002
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->address_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3021
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;-><init>()V

    if-eqz p2, :cond_6

    .line 3026
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 3030
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3

    const/16 v4, 0x12

    if-eq v2, v4, :cond_2

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 3054
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 3048
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3050
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->address_:Ljava/lang/Object;

    goto :goto_0

    .line 3042
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3044
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->chainType_:Ljava/lang/Object;

    goto :goto_0

    .line 3036
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3038
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->path_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3065
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 3066
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 3063
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3068
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3069
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->makeExtensionsImmutable()V

    .line 3070
    throw p1

    .line 3068
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3069
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->makeExtensionsImmutable()V

    return-void

    :cond_6
    const/4 p1, 0x0

    .line 3023
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2990
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 2997
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 3193
    iput-byte p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 2990
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$5500()Z
    .locals 1

    .line 2990
    sget-boolean v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5700(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;)Ljava/lang/Object;
    .locals 0

    .line 2990
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->path_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5702(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2990
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->path_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5800(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;)Ljava/lang/Object;
    .locals 0

    .line 2990
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->chainType_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5802(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2990
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->chainType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5900(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;)Ljava/lang/Object;
    .locals 0

    .line 2990
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->address_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5902(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2990
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->address_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6000(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 2990
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$6100()Lcom/google/protobuf/Parser;
    .locals 1

    .line 2990
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2990
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2990
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6400(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2990
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;
    .locals 1

    .line 3779
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3074
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$5100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 1

    .line 3350
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 1

    .line 3353
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3323
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 3324
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3330
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 3331
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3291
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3297
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3336
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 3337
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3343
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 3344
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3311
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 3312
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3318
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 3319
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3280
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3286
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3301
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3307
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;",
            ">;"
        }
    .end annotation

    .line 3794
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 3244
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    if-nez v1, :cond_1

    .line 3245
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 3247
    :cond_1
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    .line 3249
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 3250
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 3251
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getChainType()Ljava/lang/String;

    move-result-object v1

    .line 3252
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getChainType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 3253
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 3254
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 3255
    :cond_4
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    .line 3164
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->address_:Ljava/lang/Object;

    .line 3165
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3166
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3168
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3170
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3171
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->address_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3181
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->address_:Ljava/lang/Object;

    .line 3182
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3183
    check-cast v0, Ljava/lang/String;

    .line 3184
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3186
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->address_:Ljava/lang/Object;

    return-object v0

    .line 3189
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getChainType()Ljava/lang/String;
    .locals 2

    .line 3128
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->chainType_:Ljava/lang/Object;

    .line 3129
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3130
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3132
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3134
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3135
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->chainType_:Ljava/lang/Object;

    return-object v0
.end method

.method public getChainTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3145
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->chainType_:Ljava/lang/Object;

    .line 3146
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3147
    check-cast v0, Ljava/lang/String;

    .line 3148
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3150
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->chainType_:Ljava/lang/Object;

    return-object v0

    .line 3153
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2990
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2990
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;
    .locals 1

    .line 3804
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;",
            ">;"
        }
    .end annotation

    .line 3799
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 3092
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->path_:Ljava/lang/Object;

    .line 3093
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3094
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3096
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3098
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3099
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->path_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3109
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->path_:Ljava/lang/Object;

    .line 3110
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3111
    check-cast v0, Ljava/lang/String;

    .line 3112
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3114
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->path_:Ljava/lang/Object;

    return-object v0

    .line 3117
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 3221
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3225
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 3226
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->path_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3228
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getChainTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 3229
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->chainType_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3231
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 3232
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->address_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3234
    :cond_3
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 3235
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 3015
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 3261
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 3262
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 3265
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 3267
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 3269
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getChainType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 3271
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 3272
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 3273
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 3080
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$5200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    .line 3081
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 3196
    iget-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 3200
    :cond_1
    iput-byte v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2990
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2990
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2990
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 1

    .line 3348
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 2

    .line 3364
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 3009
    new-instance p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2990
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2990
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;
    .locals 2

    .line 3357
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 3358
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult$Builder;

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

    .line 3207
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3208
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->path_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3210
    :cond_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getChainTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 3211
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->chainType_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3213
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 3214
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->address_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 3216
    :cond_2
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

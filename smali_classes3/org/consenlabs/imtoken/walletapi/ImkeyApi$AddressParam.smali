.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ImkeyApi.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AddressParam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    }
.end annotation


# static fields
.field public static final CHAINTYPE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

.field public static final ISSEGWIT_FIELD_NUMBER:I = 0x4

.field public static final NETWORK_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private volatile chainType_:Ljava/lang/Object;

.field private isSegWit_:Z

.field private memoizedIsInitialized:B

.field private volatile network_:Ljava/lang/Object;

.field private volatile path_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2913
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    .line 2921
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$1;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$1;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2074
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 2283
    iput-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->memoizedIsInitialized:B

    const-string v0, ""

    .line 2075
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->chainType_:Ljava/lang/Object;

    .line 2076
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->path_:Ljava/lang/Object;

    .line 2077
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->network_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2096
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;-><init>()V

    if-eqz p2, :cond_7

    .line 2101
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 2105
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/16 v4, 0xa

    if-eq v2, v4, :cond_4

    const/16 v4, 0x12

    if-eq v2, v4, :cond_3

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_2

    const/16 v4, 0x20

    if-eq v2, v4, :cond_1

    .line 2134
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 2130
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->isSegWit_:Z

    goto :goto_0

    .line 2123
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2125
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->network_:Ljava/lang/Object;

    goto :goto_0

    .line 2117
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2119
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->path_:Ljava/lang/Object;

    goto :goto_0

    .line 2111
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2113
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->chainType_:Ljava/lang/Object;
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

    .line 2145
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 2146
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 2143
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2148
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2149
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->makeExtensionsImmutable()V

    .line 2150
    throw p1

    .line 2148
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2149
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->makeExtensionsImmutable()V

    return-void

    :cond_7
    const/4 p1, 0x0

    .line 2098
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2065
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 2072
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 2283
    iput-byte p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 2065
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$3900()Z
    .locals 1

    .line 2065
    sget-boolean v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4100(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;)Ljava/lang/Object;
    .locals 0

    .line 2065
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->chainType_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4102(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2065
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->chainType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4200(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;)Ljava/lang/Object;
    .locals 0

    .line 2065
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->path_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4202(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2065
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->path_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4300(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;)Ljava/lang/Object;
    .locals 0

    .line 2065
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->network_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4302(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2065
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->network_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4402(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;Z)Z
    .locals 0

    .line 2065
    iput-boolean p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->isSegWit_:Z

    return p1
.end method

.method static synthetic access$4500(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 2065
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$4600()Lcom/google/protobuf/Parser;
    .locals 1

    .line 2065
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2065
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2065
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2065
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;
    .locals 1

    .line 2917
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2154
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$3500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 1

    .line 2452
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 1

    .line 2455
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2425
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 2426
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2432
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 2433
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2393
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2399
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2438
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 2439
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2445
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 2446
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2413
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 2414
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2420
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 2421
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2382
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2388
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2403
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2409
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;",
            ">;"
        }
    .end annotation

    .line 2932
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2341
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    if-nez v1, :cond_1

    .line 2342
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2344
    :cond_1
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    .line 2346
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getChainType()Ljava/lang/String;

    move-result-object v1

    .line 2347
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getChainType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 2348
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2349
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 2350
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getNetwork()Ljava/lang/String;

    move-result-object v1

    .line 2351
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getNetwork()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 2352
    :cond_4
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getIsSegWit()Z

    move-result v1

    .line 2353
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getIsSegWit()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 2354
    :cond_5
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public getChainType()Ljava/lang/String;
    .locals 2

    .line 2172
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->chainType_:Ljava/lang/Object;

    .line 2173
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2174
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2176
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2178
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2179
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->chainType_:Ljava/lang/Object;

    return-object v0
.end method

.method public getChainTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2189
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->chainType_:Ljava/lang/Object;

    .line 2190
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2191
    check-cast v0, Ljava/lang/String;

    .line 2192
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2194
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->chainType_:Ljava/lang/Object;

    return-object v0

    .line 2197
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2065
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2065
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;
    .locals 1

    .line 2942
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    return-object v0
.end method

.method public getIsSegWit()Z
    .locals 1

    .line 2280
    iget-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->isSegWit_:Z

    return v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 2

    .line 2244
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->network_:Ljava/lang/Object;

    .line 2245
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2246
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2248
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2250
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2251
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->network_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNetworkBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2261
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->network_:Ljava/lang/Object;

    .line 2262
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2263
    check-cast v0, Ljava/lang/String;

    .line 2264
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2266
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->network_:Ljava/lang/Object;

    return-object v0

    .line 2269
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;",
            ">;"
        }
    .end annotation

    .line 2937
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 2208
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->path_:Ljava/lang/Object;

    .line 2209
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2210
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2212
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2214
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2215
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->path_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2225
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->path_:Ljava/lang/Object;

    .line 2226
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2227
    check-cast v0, Ljava/lang/String;

    .line 2228
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2230
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->path_:Ljava/lang/Object;

    return-object v0

    .line 2233
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 2314
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2318
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getChainTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 2319
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->chainType_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2321
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 2322
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->path_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2324
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getNetworkBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 2325
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->network_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2327
    :cond_3
    iget-boolean v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->isSegWit_:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 2329
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 2331
    :cond_4
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2332
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 2090
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 2360
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 2361
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2364
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 2366
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getChainType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 2368
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 2370
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 2373
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getIsSegWit()Z

    move-result v1

    .line 2372
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 2374
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2375
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 2160
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$3600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    .line 2161
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 2286
    iget-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2290
    :cond_1
    iput-byte v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2065
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2065
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2065
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 1

    .line 2450
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 2

    .line 2466
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 2084
    new-instance p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2065
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2065
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;
    .locals 2

    .line 2459
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 2460
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam$Builder;

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

    .line 2297
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getChainTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2298
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->chainType_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2300
    :cond_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 2301
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->path_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2303
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->getNetworkBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 2304
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->network_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2306
    :cond_2
    iget-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->isSegWit_:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 2307
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2309
    :cond_3
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$AddressParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

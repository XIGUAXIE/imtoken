.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ImkeyApi.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExternalAddressParam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    }
.end annotation


# static fields
.field public static final CHAINTYPE_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

.field public static final EXTERNALIDX_FIELD_NUMBER:I = 0x5

.field public static final NETWORK_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x1

.field public static final SEGWIT_FIELD_NUMBER:I = 0x4

.field private static final serialVersionUID:J


# instance fields
.field private volatile chainType_:Ljava/lang/Object;

.field private externalIdx_:I

.field private memoizedIsInitialized:B

.field private volatile network_:Ljava/lang/Object;

.field private volatile path_:Ljava/lang/Object;

.field private volatile segWit_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10891
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    .line 10899
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$1;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$1;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 9917
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 10169
    iput-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->memoizedIsInitialized:B

    const-string v0, ""

    .line 9918
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->path_:Ljava/lang/Object;

    .line 9919
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->chainType_:Ljava/lang/Object;

    .line 9920
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->network_:Ljava/lang/Object;

    .line 9921
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->segWit_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9940
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;-><init>()V

    if-eqz p2, :cond_8

    .line 9945
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 9949
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const/16 v4, 0xa

    if-eq v2, v4, :cond_5

    const/16 v4, 0x12

    if-eq v2, v4, :cond_4

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_3

    const/16 v4, 0x22

    if-eq v2, v4, :cond_2

    const/16 v4, 0x28

    if-eq v2, v4, :cond_1

    .line 9984
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 9980
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    iput v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->externalIdx_:I

    goto :goto_0

    .line 9973
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 9975
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->segWit_:Ljava/lang/Object;

    goto :goto_0

    .line 9967
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 9969
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->network_:Ljava/lang/Object;

    goto :goto_0

    .line 9961
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 9963
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->chainType_:Ljava/lang/Object;

    goto :goto_0

    .line 9955
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 9957
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->path_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 9995
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 9996
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 9993
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9998
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 9999
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->makeExtensionsImmutable()V

    .line 10000
    throw p1

    .line 9998
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 9999
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->makeExtensionsImmutable()V

    return-void

    :cond_8
    const/4 p1, 0x0

    .line 9942
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9908
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 9915
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 10169
    iput-byte p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 9908
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$16700()Z
    .locals 1

    .line 9908
    sget-boolean v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$16900(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;)Ljava/lang/Object;
    .locals 0

    .line 9908
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->path_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$16902(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9908
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->path_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17000(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;)Ljava/lang/Object;
    .locals 0

    .line 9908
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->chainType_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$17002(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9908
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->chainType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17100(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;)Ljava/lang/Object;
    .locals 0

    .line 9908
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->network_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$17102(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9908
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->network_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17200(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;)Ljava/lang/Object;
    .locals 0

    .line 9908
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->segWit_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$17202(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9908
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->segWit_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$17302(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;I)I
    .locals 0

    .line 9908
    iput p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->externalIdx_:I

    return p1
.end method

.method static synthetic access$17400(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 9908
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$17500()Lcom/google/protobuf/Parser;
    .locals 1

    .line 9908
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$17600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9908
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$17700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9908
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$17800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9908
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$17900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 9908
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;
    .locals 1

    .line 10895
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 10004
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$16300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 1

    .line 10347
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 1

    .line 10350
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10320
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 10321
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10327
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 10328
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10288
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10294
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10333
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 10334
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10340
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 10341
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10308
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 10309
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10315
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 10316
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10277
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10283
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10298
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10304
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;",
            ">;"
        }
    .end annotation

    .line 10910
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 10233
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    if-nez v1, :cond_1

    .line 10234
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 10236
    :cond_1
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    .line 10238
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 10239
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 10240
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getChainType()Ljava/lang/String;

    move-result-object v1

    .line 10241
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getChainType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 10242
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getNetwork()Ljava/lang/String;

    move-result-object v1

    .line 10243
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getNetwork()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 10244
    :cond_4
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getSegWit()Ljava/lang/String;

    move-result-object v1

    .line 10245
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getSegWit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 10246
    :cond_5
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getExternalIdx()I

    move-result v1

    .line 10247
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getExternalIdx()I

    move-result v3

    if-eq v1, v3, :cond_6

    return v2

    .line 10248
    :cond_6
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public getChainType()Ljava/lang/String;
    .locals 2

    .line 10058
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->chainType_:Ljava/lang/Object;

    .line 10059
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10060
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 10062
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10064
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 10065
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->chainType_:Ljava/lang/Object;

    return-object v0
.end method

.method public getChainTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 10075
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->chainType_:Ljava/lang/Object;

    .line 10076
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10077
    check-cast v0, Ljava/lang/String;

    .line 10078
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10080
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->chainType_:Ljava/lang/Object;

    return-object v0

    .line 10083
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 9908
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 9908
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;
    .locals 1

    .line 10920
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    return-object v0
.end method

.method public getExternalIdx()I
    .locals 1

    .line 10166
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->externalIdx_:I

    return v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 2

    .line 10094
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->network_:Ljava/lang/Object;

    .line 10095
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10096
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 10098
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10100
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 10101
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->network_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNetworkBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 10111
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->network_:Ljava/lang/Object;

    .line 10112
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10113
    check-cast v0, Ljava/lang/String;

    .line 10114
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10116
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->network_:Ljava/lang/Object;

    return-object v0

    .line 10119
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
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;",
            ">;"
        }
    .end annotation

    .line 10915
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 10022
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->path_:Ljava/lang/Object;

    .line 10023
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10024
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 10026
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10028
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 10029
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->path_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 10039
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->path_:Ljava/lang/Object;

    .line 10040
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10041
    check-cast v0, Ljava/lang/String;

    .line 10042
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10044
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->path_:Ljava/lang/Object;

    return-object v0

    .line 10047
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSegWit()Ljava/lang/String;
    .locals 2

    .line 10130
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->segWit_:Ljava/lang/Object;

    .line 10131
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10132
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 10134
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 10136
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 10137
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->segWit_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSegWitBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 10147
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->segWit_:Ljava/lang/Object;

    .line 10148
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 10149
    check-cast v0, Ljava/lang/String;

    .line 10150
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 10152
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->segWit_:Ljava/lang/Object;

    return-object v0

    .line 10155
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 10203
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 10207
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 10208
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->path_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10210
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getChainTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 10211
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->chainType_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10213
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getNetworkBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 10214
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->network_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10216
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getSegWitBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 10217
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->segWit_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10219
    :cond_4
    iget v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->externalIdx_:I

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 10221
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10223
    :cond_5
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 10224
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 9934
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 10254
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 10255
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 10258
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 10260
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 10262
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getChainType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 10264
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 10266
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getSegWit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 10268
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getExternalIdx()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 10269
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 10270
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 10010
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$16400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    .line 10011
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 10172
    iget-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 10176
    :cond_1
    iput-byte v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 9908
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 9908
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 9908
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 1

    .line 10345
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 2

    .line 10361
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 9928
    new-instance p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 9908
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 9908
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;
    .locals 2

    .line 10354
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 10355
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam$Builder;

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

    .line 10183
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 10184
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->path_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 10186
    :cond_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getChainTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 10187
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->chainType_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 10189
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getNetworkBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 10190
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->network_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 10192
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->getSegWitBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 10193
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->segWit_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 10195
    :cond_3
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->externalIdx_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 10196
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10198
    :cond_4
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

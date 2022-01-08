.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ImkeyApi.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitImKeyCoreXParam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

.field public static final FILEDIR_FIELD_NUMBER:I = 0x1

.field public static final ISDEBUG_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;",
            ">;"
        }
    .end annotation
.end field

.field public static final SYSTEM_FIELD_NUMBER:I = 0x5

.field public static final XPUBCOMMONIV_FIELD_NUMBER:I = 0x3

.field public static final XPUBCOMMONKEY_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private volatile fileDir_:Ljava/lang/Object;

.field private isDebug_:Z

.field private memoizedIsInitialized:B

.field private volatile system_:Ljava/lang/Object;

.field private volatile xpubCommonIv_:Ljava/lang/Object;

.field private volatile xpubCommonKey_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11970
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    .line 11978
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$1;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$1;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 10995
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 11247
    iput-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->memoizedIsInitialized:B

    const-string v0, ""

    .line 10996
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->fileDir_:Ljava/lang/Object;

    .line 10997
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    .line 10998
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    .line 10999
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->system_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11018
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;-><init>()V

    if-eqz p2, :cond_8

    .line 11023
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 11027
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

    const/16 v4, 0x20

    if-eq v2, v4, :cond_2

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_1

    .line 11062
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 11056
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11058
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->system_:Ljava/lang/Object;

    goto :goto_0

    .line 11052
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->isDebug_:Z

    goto :goto_0

    .line 11045
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11047
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    goto :goto_0

    .line 11039
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11041
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    goto :goto_0

    .line 11033
    :cond_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 11035
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->fileDir_:Ljava/lang/Object;
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

    .line 11073
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 11074
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 11071
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11076
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 11077
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->makeExtensionsImmutable()V

    .line 11078
    throw p1

    .line 11076
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 11077
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->makeExtensionsImmutable()V

    return-void

    :cond_8
    const/4 p1, 0x0

    .line 11020
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10986
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 10993
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 11247
    iput-byte p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 10986
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$18500()Z
    .locals 1

    .line 10986
    sget-boolean v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$18700(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;)Ljava/lang/Object;
    .locals 0

    .line 10986
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->fileDir_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$18702(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10986
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->fileDir_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18800(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;)Ljava/lang/Object;
    .locals 0

    .line 10986
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$18802(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10986
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$18900(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;)Ljava/lang/Object;
    .locals 0

    .line 10986
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$18902(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10986
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$19002(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;Z)Z
    .locals 0

    .line 10986
    iput-boolean p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->isDebug_:Z

    return p1
.end method

.method static synthetic access$19100(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;)Ljava/lang/Object;
    .locals 0

    .line 10986
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->system_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$19102(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 10986
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->system_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$19200(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 10986
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$19300()Lcom/google/protobuf/Parser;
    .locals 1

    .line 10986
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$19400(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 10986
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$19500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 10986
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$19600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 10986
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$19700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 10986
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;
    .locals 1

    .line 11974
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 11082
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$18100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 1

    .line 11426
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 1

    .line 11429
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11399
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 11400
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11406
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 11407
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11367
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11373
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11412
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 11413
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11419
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 11420
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11387
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 11388
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11394
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 11395
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11356
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11362
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11377
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11383
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;",
            ">;"
        }
    .end annotation

    .line 11989
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 11311
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    if-nez v1, :cond_1

    .line 11312
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 11314
    :cond_1
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    .line 11316
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getFileDir()Ljava/lang/String;

    move-result-object v1

    .line 11317
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getFileDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 11318
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getXpubCommonKey()Ljava/lang/String;

    move-result-object v1

    .line 11319
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getXpubCommonKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 11320
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getXpubCommonIv()Ljava/lang/String;

    move-result-object v1

    .line 11321
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getXpubCommonIv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 11322
    :cond_4
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getIsDebug()Z

    move-result v1

    .line 11323
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getIsDebug()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 11324
    :cond_5
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getSystem()Ljava/lang/String;

    move-result-object v1

    .line 11325
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getSystem()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 11326
    :cond_6
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 10986
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 10986
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;
    .locals 1

    .line 11999
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    return-object v0
.end method

.method public getFileDir()Ljava/lang/String;
    .locals 2

    .line 11100
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->fileDir_:Ljava/lang/Object;

    .line 11101
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11102
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11104
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11106
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 11107
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->fileDir_:Ljava/lang/Object;

    return-object v0
.end method

.method public getFileDirBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 11117
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->fileDir_:Ljava/lang/Object;

    .line 11118
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11119
    check-cast v0, Ljava/lang/String;

    .line 11120
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11122
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->fileDir_:Ljava/lang/Object;

    return-object v0

    .line 11125
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getIsDebug()Z
    .locals 1

    .line 11208
    iget-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->isDebug_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;",
            ">;"
        }
    .end annotation

    .line 11994
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 11281
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 11285
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getFileDirBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 11286
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->fileDir_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11288
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getXpubCommonKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 11289
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11291
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getXpubCommonIvBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 11292
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11294
    :cond_3
    iget-boolean v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->isDebug_:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 11296
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 11298
    :cond_4
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getSystemBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x5

    .line 11299
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->system_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11301
    :cond_5
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 11302
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->memoizedSize:I

    return v0
.end method

.method public getSystem()Ljava/lang/String;
    .locals 2

    .line 11218
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->system_:Ljava/lang/Object;

    .line 11219
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11220
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11222
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11224
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 11225
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->system_:Ljava/lang/Object;

    return-object v0
.end method

.method public getSystemBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 11235
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->system_:Ljava/lang/Object;

    .line 11236
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11237
    check-cast v0, Ljava/lang/String;

    .line 11238
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11240
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->system_:Ljava/lang/Object;

    return-object v0

    .line 11243
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 11012
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getXpubCommonIv()Ljava/lang/String;
    .locals 2

    .line 11172
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    .line 11173
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11174
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11176
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11178
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 11179
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    return-object v0
.end method

.method public getXpubCommonIvBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 11189
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    .line 11190
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11191
    check-cast v0, Ljava/lang/String;

    .line 11192
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11194
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    return-object v0

    .line 11197
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getXpubCommonKey()Ljava/lang/String;
    .locals 2

    .line 11136
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    .line 11137
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11138
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 11140
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 11142
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 11143
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    return-object v0
.end method

.method public getXpubCommonKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 11153
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    .line 11154
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 11155
    check-cast v0, Ljava/lang/String;

    .line 11156
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 11158
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    return-object v0

    .line 11161
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 11332
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 11333
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 11336
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 11338
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getFileDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 11340
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getXpubCommonKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 11342
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getXpubCommonIv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 11345
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getIsDebug()Z

    move-result v1

    .line 11344
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    .line 11347
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getSystem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 11348
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 11349
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 11088
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$18200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    .line 11089
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 11250
    iget-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 11254
    :cond_1
    iput-byte v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 10986
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 10986
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 10986
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 1

    .line 11424
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 2

    .line 11440
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 11006
    new-instance p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 10986
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 10986
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;
    .locals 2

    .line 11433
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 11434
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam$Builder;

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

    .line 11261
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getFileDirBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 11262
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->fileDir_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11264
    :cond_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getXpubCommonKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 11265
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11267
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getXpubCommonIvBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 11268
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11270
    :cond_2
    iget-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->isDebug_:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 11271
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11273
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->getSystemBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 11274
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->system_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 11276
    :cond_4
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$InitImKeyCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

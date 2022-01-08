.class public final Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "TcxApiStruct.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/TcxApiStruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitTokenCoreXParam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

.field public static final FILEDIR_FIELD_NUMBER:I = 0x1

.field public static final ISDEBUG_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;",
            ">;"
        }
    .end annotation
.end field

.field public static final XPUBCOMMONIV_FIELD_NUMBER:I = 0x3

.field public static final XPUBCOMMONKEY_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private volatile fileDir_:Ljava/lang/Object;

.field private isDebug_:Z

.field private memoizedIsInitialized:B

.field private volatile xpubCommonIv_:Ljava/lang/Object;

.field private volatile xpubCommonKey_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2350
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    .line 2358
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$1;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$1;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1506
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1715
    iput-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->memoizedIsInitialized:B

    const-string v0, ""

    .line 1507
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->fileDir_:Ljava/lang/Object;

    .line 1508
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    .line 1509
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1528
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;-><init>()V

    if-eqz p2, :cond_7

    .line 1533
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 1537
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

    .line 1566
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1562
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->isDebug_:Z

    goto :goto_0

    .line 1555
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1557
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    goto :goto_0

    .line 1549
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1551
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    goto :goto_0

    .line 1543
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1545
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->fileDir_:Ljava/lang/Object;
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

    .line 1577
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1578
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 1575
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1580
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1581
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->makeExtensionsImmutable()V

    .line 1582
    throw p1

    .line 1580
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1581
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->makeExtensionsImmutable()V

    return-void

    :cond_7
    const/4 p1, 0x0

    .line 1530
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1497
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 1504
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1715
    iput-byte p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$1;)V
    .locals 0

    .line 1497
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$2800()Z
    .locals 1

    .line 1497
    sget-boolean v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3000(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;)Ljava/lang/Object;
    .locals 0

    .line 1497
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->fileDir_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3002(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1497
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->fileDir_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3100(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;)Ljava/lang/Object;
    .locals 0

    .line 1497
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3102(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1497
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3200(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;)Ljava/lang/Object;
    .locals 0

    .line 1497
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3202(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1497
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3302(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;Z)Z
    .locals 0

    .line 1497
    iput-boolean p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->isDebug_:Z

    return p1
.end method

.method static synthetic access$3400(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1497
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$3500()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1497
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1497
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1497
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1497
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;
    .locals 1

    .line 2354
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1586
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct;->access$2400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 1

    .line 1884
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->toBuilder()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 1

    .line 1887
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->toBuilder()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1857
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 1858
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1864
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 1865
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1825
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1831
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1870
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 1871
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1877
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 1878
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1845
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 1846
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1852
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 1853
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1814
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1820
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1835
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1841
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;",
            ">;"
        }
    .end annotation

    .line 2369
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1773
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    if-nez v1, :cond_1

    .line 1774
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1776
    :cond_1
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    .line 1778
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getFileDir()Ljava/lang/String;

    move-result-object v1

    .line 1779
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getFileDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 1780
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getXpubCommonKey()Ljava/lang/String;

    move-result-object v1

    .line 1781
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getXpubCommonKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1782
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getXpubCommonIv()Ljava/lang/String;

    move-result-object v1

    .line 1783
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getXpubCommonIv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 1784
    :cond_4
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getIsDebug()Z

    move-result v1

    .line 1785
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getIsDebug()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 1786
    :cond_5
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1497
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1497
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;
    .locals 1

    .line 2379
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    return-object v0
.end method

.method public getFileDir()Ljava/lang/String;
    .locals 2

    .line 1604
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->fileDir_:Ljava/lang/Object;

    .line 1605
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1606
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1608
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1610
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1611
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->fileDir_:Ljava/lang/Object;

    return-object v0
.end method

.method public getFileDirBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1621
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->fileDir_:Ljava/lang/Object;

    .line 1622
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1623
    check-cast v0, Ljava/lang/String;

    .line 1624
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1626
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->fileDir_:Ljava/lang/Object;

    return-object v0

    .line 1629
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getIsDebug()Z
    .locals 1

    .line 1712
    iget-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->isDebug_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;",
            ">;"
        }
    .end annotation

    .line 2374
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1746
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1750
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getFileDirBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 1751
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->fileDir_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1753
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getXpubCommonKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 1754
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1756
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getXpubCommonIvBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 1757
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1759
    :cond_3
    iget-boolean v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->isDebug_:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 1761
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1763
    :cond_4
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1764
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1522
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getXpubCommonIv()Ljava/lang/String;
    .locals 2

    .line 1676
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    .line 1677
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1678
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1680
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1682
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1683
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    return-object v0
.end method

.method public getXpubCommonIvBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1693
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    .line 1694
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1695
    check-cast v0, Ljava/lang/String;

    .line 1696
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1698
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    return-object v0

    .line 1701
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getXpubCommonKey()Ljava/lang/String;
    .locals 2

    .line 1640
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    .line 1641
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1642
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1644
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1646
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1647
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    return-object v0
.end method

.method public getXpubCommonKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1657
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    .line 1658
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1659
    check-cast v0, Ljava/lang/String;

    .line 1660
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1662
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    return-object v0

    .line 1665
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1792
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1793
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 1796
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 1798
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getFileDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 1800
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getXpubCommonKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 1802
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getXpubCommonIv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 1805
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getIsDebug()Z

    move-result v1

    .line 1804
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 1806
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1807
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1592
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct;->access$2500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    .line 1593
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1718
    iget-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 1722
    :cond_1
    iput-byte v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1497
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1497
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1497
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 1

    .line 1882
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->newBuilder()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 2

    .line 1898
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 1516
    new-instance p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1497
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->toBuilder()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1497
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->toBuilder()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;
    .locals 2

    .line 1891
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 1892
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$1;)V

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam$Builder;

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

    .line 1729
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getFileDirBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1730
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->fileDir_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1732
    :cond_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getXpubCommonKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 1733
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1735
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->getXpubCommonIvBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 1736
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1738
    :cond_2
    iget-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->isDebug_:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 1739
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1741
    :cond_3
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$InitTokenCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

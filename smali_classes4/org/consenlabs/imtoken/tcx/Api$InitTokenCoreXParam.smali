.class public final Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "Api.java"

# interfaces
.implements Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/tcx/Api;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InitTokenCoreXParam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

.field public static final FILEDIR_FIELD_NUMBER:I = 0x1

.field public static final ISDEBUG_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;",
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

    .line 2349
    new-instance v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    .line 2357
    new-instance v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$1;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$1;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1505
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1714
    iput-byte v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->memoizedIsInitialized:B

    const-string v0, ""

    .line 1506
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->fileDir_:Ljava/lang/Object;

    .line 1507
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    .line 1508
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1527
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;-><init>()V

    if-eqz p2, :cond_7

    .line 1532
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 1536
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

    .line 1565
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1561
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->isDebug_:Z

    goto :goto_0

    .line 1554
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1556
    iput-object v2, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    goto :goto_0

    .line 1548
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1550
    iput-object v2, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    goto :goto_0

    .line 1542
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1544
    iput-object v2, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->fileDir_:Ljava/lang/Object;
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

    .line 1576
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1577
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 1574
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1579
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1580
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->makeExtensionsImmutable()V

    .line 1581
    throw p1

    .line 1579
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1580
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->makeExtensionsImmutable()V

    return-void

    :cond_7
    const/4 p1, 0x0

    .line 1529
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/tcx/Api$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1496
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 1503
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1714
    iput-byte p1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/tcx/Api$1;)V
    .locals 0

    .line 1496
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$2800()Z
    .locals 1

    .line 1496
    sget-boolean v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3000(Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;)Ljava/lang/Object;
    .locals 0

    .line 1496
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->fileDir_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3002(Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1496
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->fileDir_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3100(Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;)Ljava/lang/Object;
    .locals 0

    .line 1496
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3102(Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1496
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3200(Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;)Ljava/lang/Object;
    .locals 0

    .line 1496
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3202(Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1496
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3302(Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;Z)Z
    .locals 0

    .line 1496
    iput-boolean p1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->isDebug_:Z

    return p1
.end method

.method static synthetic access$3400(Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1496
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$3500()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1496
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1496
    invoke-static {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1496
    invoke-static {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1496
    invoke-static {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;
    .locals 1

    .line 2353
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1585
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api;->access$2400()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 1

    .line 1883
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->toBuilder()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 1

    .line 1886
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->toBuilder()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1856
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 1857
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1863
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 1864
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1824
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1830
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1869
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 1870
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1876
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 1877
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1844
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 1845
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1851
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 1852
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1813
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1819
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1834
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1840
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;",
            ">;"
        }
    .end annotation

    .line 2368
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1772
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    if-nez v1, :cond_1

    .line 1773
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1775
    :cond_1
    check-cast p1, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    .line 1777
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getFileDir()Ljava/lang/String;

    move-result-object v1

    .line 1778
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getFileDir()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 1779
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getXpubCommonKey()Ljava/lang/String;

    move-result-object v1

    .line 1780
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getXpubCommonKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 1781
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getXpubCommonIv()Ljava/lang/String;

    move-result-object v1

    .line 1782
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getXpubCommonIv()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 1783
    :cond_4
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getIsDebug()Z

    move-result v1

    .line 1784
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getIsDebug()Z

    move-result v3

    if-eq v1, v3, :cond_5

    return v2

    .line 1785
    :cond_5
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1496
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1496
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;
    .locals 1

    .line 2378
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    return-object v0
.end method

.method public getFileDir()Ljava/lang/String;
    .locals 2

    .line 1603
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->fileDir_:Ljava/lang/Object;

    .line 1604
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1605
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1607
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1609
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1610
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->fileDir_:Ljava/lang/Object;

    return-object v0
.end method

.method public getFileDirBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1620
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->fileDir_:Ljava/lang/Object;

    .line 1621
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1622
    check-cast v0, Ljava/lang/String;

    .line 1623
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1625
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->fileDir_:Ljava/lang/Object;

    return-object v0

    .line 1628
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getIsDebug()Z
    .locals 1

    .line 1711
    iget-boolean v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->isDebug_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;",
            ">;"
        }
    .end annotation

    .line 2373
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1745
    iget v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1749
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getFileDirBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 1750
    iget-object v2, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->fileDir_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1752
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getXpubCommonKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 1753
    iget-object v2, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1755
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getXpubCommonIvBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 1756
    iget-object v2, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1758
    :cond_3
    iget-boolean v1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->isDebug_:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 1760
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1762
    :cond_4
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1763
    iput v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1521
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getXpubCommonIv()Ljava/lang/String;
    .locals 2

    .line 1675
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    .line 1676
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1677
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1679
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1681
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1682
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    return-object v0
.end method

.method public getXpubCommonIvBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1692
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    .line 1693
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1694
    check-cast v0, Ljava/lang/String;

    .line 1695
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1697
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    return-object v0

    .line 1700
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getXpubCommonKey()Ljava/lang/String;
    .locals 2

    .line 1639
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    .line 1640
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1641
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1643
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1645
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1646
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    return-object v0
.end method

.method public getXpubCommonKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1656
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    .line 1657
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1658
    check-cast v0, Ljava/lang/String;

    .line 1659
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1661
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    return-object v0

    .line 1664
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1791
    iget v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1792
    iget v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 1795
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 1797
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getFileDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 1799
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getXpubCommonKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 1801
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getXpubCommonIv()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 1804
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getIsDebug()Z

    move-result v1

    .line 1803
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 1805
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1806
    iput v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1591
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api;->access$2500()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    const-class v2, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    .line 1592
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1717
    iget-byte v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 1721
    :cond_1
    iput-byte v1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1496
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->newBuilderForType()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1496
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1496
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->newBuilderForType()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 1

    .line 1881
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->newBuilder()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 2

    .line 1897
    new-instance v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/tcx/Api$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 1515
    new-instance p1, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1496
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->toBuilder()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1496
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->toBuilder()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;
    .locals 2

    .line 1890
    sget-object v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 1891
    new-instance v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;-><init>(Lorg/consenlabs/imtoken/tcx/Api$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;-><init>(Lorg/consenlabs/imtoken/tcx/Api$1;)V

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;)Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam$Builder;

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

    .line 1728
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getFileDirBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1729
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->fileDir_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1731
    :cond_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getXpubCommonKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 1732
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->xpubCommonKey_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1734
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->getXpubCommonIvBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 1735
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->xpubCommonIv_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1737
    :cond_2
    iget-boolean v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->isDebug_:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 1738
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1740
    :cond_3
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/Api$InitTokenCoreXParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

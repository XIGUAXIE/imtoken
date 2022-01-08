.class public final Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "CacheDerivedKey.java"

# interfaces
.implements Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CacheDerivedKeyResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

.field public static final ENABLEDERIVEDKEY_FIELD_NUMBER:I = 0x2

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final MODE_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private enableDerivedKey_:Z

.field private volatile id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile mode_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2194
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    .line 2202
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$1;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$1;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1491
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 1657
    iput-byte v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->memoizedIsInitialized:B

    const-string v0, ""

    .line 1492
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->id_:Ljava/lang/Object;

    .line 1493
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->mode_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1512
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;-><init>()V

    if-eqz p2, :cond_6

    .line 1517
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 1521
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3

    const/16 v4, 0x10

    if-eq v2, v4, :cond_2

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 1544
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1538
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1540
    iput-object v2, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->mode_:Ljava/lang/Object;

    goto :goto_0

    .line 1534
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->enableDerivedKey_:Z

    goto :goto_0

    .line 1527
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 1529
    iput-object v2, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->id_:Ljava/lang/Object;
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

    .line 1555
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 1556
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 1553
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1558
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1559
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->makeExtensionsImmutable()V

    .line 1560
    throw p1

    .line 1558
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 1559
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->makeExtensionsImmutable()V

    return-void

    :cond_6
    const/4 p1, 0x0

    .line 1514
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1482
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 1489
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 1657
    iput-byte p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V
    .locals 0

    .line 1482
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$3000()Z
    .locals 1

    .line 1482
    sget-boolean v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3200(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;)Ljava/lang/Object;
    .locals 0

    .line 1482
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3202(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1482
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3302(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;Z)Z
    .locals 0

    .line 1482
    iput-boolean p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->enableDerivedKey_:Z

    return p1
.end method

.method static synthetic access$3400(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;)Ljava/lang/Object;
    .locals 0

    .line 1482
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->mode_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3402(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1482
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->mode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3500(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 1482
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$3600()Lcom/google/protobuf/Parser;
    .locals 1

    .line 1482
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1482
    invoke-static {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1482
    invoke-static {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;
    .locals 1

    .line 2198
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1564
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$2600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 1

    .line 1816
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 1

    .line 1819
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1789
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 1790
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1796
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 1797
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1757
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1763
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1802
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 1803
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1809
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 1810
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1777
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 1778
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1784
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 1785
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1746
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1752
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1767
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1773
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;",
            ">;"
        }
    .end annotation

    .line 2213
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1709
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    if-nez v1, :cond_1

    .line 1710
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1712
    :cond_1
    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    .line 1714
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getId()Ljava/lang/String;

    move-result-object v1

    .line 1715
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 1716
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getEnableDerivedKey()Z

    move-result v1

    .line 1717
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getEnableDerivedKey()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    .line 1718
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getMode()Ljava/lang/String;

    move-result-object v1

    .line 1719
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 1720
    :cond_4
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 1482
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 1482
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;
    .locals 1

    .line 2223
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    return-object v0
.end method

.method public getEnableDerivedKey()Z
    .locals 1

    .line 1618
    iget-boolean v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->enableDerivedKey_:Z

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 1582
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->id_:Ljava/lang/Object;

    .line 1583
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1584
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1586
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1588
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1589
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1599
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->id_:Ljava/lang/Object;

    .line 1600
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1601
    check-cast v0, Ljava/lang/String;

    .line 1602
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1604
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->id_:Ljava/lang/Object;

    return-object v0

    .line 1607
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 2

    .line 1628
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->mode_:Ljava/lang/Object;

    .line 1629
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1630
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1632
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1634
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1635
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->mode_:Ljava/lang/Object;

    return-object v0
.end method

.method public getModeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1645
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->mode_:Ljava/lang/Object;

    .line 1646
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1647
    check-cast v0, Ljava/lang/String;

    .line 1648
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1650
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->mode_:Ljava/lang/Object;

    return-object v0

    .line 1653
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
            "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;",
            ">;"
        }
    .end annotation

    .line 2218
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1685
    iget v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1689
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 1690
    iget-object v2, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->id_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1692
    :cond_1
    iget-boolean v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->enableDerivedKey_:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 1694
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1696
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getModeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 1697
    iget-object v2, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->mode_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1699
    :cond_3
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1700
    iput v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 1506
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1726
    iget v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1727
    iget v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 1730
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 1732
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 1735
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getEnableDerivedKey()Z

    move-result v1

    .line 1734
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 1737
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 1738
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1739
    iput v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1570
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$2700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    const-class v2, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    .line 1571
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1660
    iget-byte v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 1664
    :cond_1
    iput-byte v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1482
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->newBuilderForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 1482
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1482
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->newBuilderForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 1

    .line 1814
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->newBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 2

    .line 1830
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 1500
    new-instance p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 1482
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 1482
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;
    .locals 2

    .line 1823
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 1824
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;-><init>(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;-><init>(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult$Builder;

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

    .line 1671
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1672
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->id_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1674
    :cond_0
    iget-boolean v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->enableDerivedKey_:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 1675
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1677
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->getModeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 1678
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->mode_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 1680
    :cond_2
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

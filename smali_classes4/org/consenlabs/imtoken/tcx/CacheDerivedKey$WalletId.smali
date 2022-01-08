.class public final Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "CacheDerivedKey.java"

# interfaces
.implements Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletIdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WalletId"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private volatile id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2760
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    .line 2768
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$1;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$1;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2256
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 2364
    iput-byte v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->memoizedIsInitialized:B

    const-string v0, ""

    .line 2257
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->id_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2276
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;-><init>()V

    if-eqz p2, :cond_4

    .line 2281
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 2285
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_1

    .line 2297
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 2291
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2293
    iput-object v2, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->id_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 2308
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 2309
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 2306
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2311
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2312
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->makeExtensionsImmutable()V

    .line 2313
    throw p1

    .line 2311
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2312
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->makeExtensionsImmutable()V

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 2278
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2247
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 2254
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 2364
    iput-byte p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V
    .locals 0

    .line 2247
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$4400()Z
    .locals 1

    .line 2247
    sget-boolean v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$4600(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;)Ljava/lang/Object;
    .locals 0

    .line 2247
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4602(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2247
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4700(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 2247
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$4800()Lcom/google/protobuf/Parser;
    .locals 1

    .line 2247
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2247
    invoke-static {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;
    .locals 1

    .line 2764
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2317
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$4000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;
    .locals 1

    .line 2501
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;
    .locals 1

    .line 2504
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2474
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->PARSER:Lcom/google/protobuf/Parser;

    .line 2475
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2481
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->PARSER:Lcom/google/protobuf/Parser;

    .line 2482
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2442
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2448
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2487
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->PARSER:Lcom/google/protobuf/Parser;

    .line 2488
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2494
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->PARSER:Lcom/google/protobuf/Parser;

    .line 2495
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2462
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->PARSER:Lcom/google/protobuf/Parser;

    .line 2463
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2469
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->PARSER:Lcom/google/protobuf/Parser;

    .line 2470
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2431
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2437
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2452
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2458
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;",
            ">;"
        }
    .end annotation

    .line 2779
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2403
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    if-nez v1, :cond_1

    .line 2404
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2406
    :cond_1
    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    .line 2408
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->getId()Ljava/lang/String;

    move-result-object v1

    .line 2409
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 2410
    :cond_2
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2247
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2247
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;
    .locals 1

    .line 2789
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 2335
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->id_:Ljava/lang/Object;

    .line 2336
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2337
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2339
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2341
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2342
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2352
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->id_:Ljava/lang/Object;

    .line 2353
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2354
    check-cast v0, Ljava/lang/String;

    .line 2355
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2357
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->id_:Ljava/lang/Object;

    return-object v0

    .line 2360
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
            "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;",
            ">;"
        }
    .end annotation

    .line 2784
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 2386
    iget v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2390
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 2391
    iget-object v2, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->id_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2393
    :cond_1
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2394
    iput v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 2270
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 2416
    iget v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 2417
    iget v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2420
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 2422
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 2423
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2424
    iput v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 2323
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$4100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    const-class v2, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    .line 2324
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 2367
    iget-byte v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2371
    :cond_1
    iput-byte v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2247
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->newBuilderForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2247
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2247
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->newBuilderForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;
    .locals 1

    .line 2499
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->newBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;
    .locals 2

    .line 2515
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 2264
    new-instance p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2247
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2247
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;
    .locals 2

    .line 2508
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 2509
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;-><init>(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;-><init>(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId$Builder;

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

    .line 2378
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2379
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->id_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2381
    :cond_0
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

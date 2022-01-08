.class public final Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "CacheDerivedKey.java"

# interfaces
.implements Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VerifyDerivedKeyParam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

.field public static final DERIVEDKEY_FIELD_NUMBER:I = 0x2

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private volatile derivedKey_:Ljava/lang/Object;

.field private volatile id_:Ljava/lang/Object;

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 697
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    .line 705
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$1;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$1;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 208
    iput-byte v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->memoizedIsInitialized:B

    const-string v0, ""

    .line 58
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->id_:Ljava/lang/Object;

    .line 59
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->derivedKey_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 78
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;-><init>()V

    if-eqz p2, :cond_5

    .line 83
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 87
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 105
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 101
    iput-object v2, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->derivedKey_:Ljava/lang/Object;

    goto :goto_0

    .line 93
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 95
    iput-object v2, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->id_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 116
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 117
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 114
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 120
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->makeExtensionsImmutable()V

    .line 121
    throw p1

    .line 119
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 120
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->makeExtensionsImmutable()V

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 80
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 55
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 208
    iput-byte p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 48
    invoke-static {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 48
    invoke-static {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .line 48
    sget-boolean v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$600(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;)Ljava/lang/Object;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$602(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$700(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;)Ljava/lang/Object;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->derivedKey_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$702(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->derivedKey_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$800(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 48
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$900()Lcom/google/protobuf/Parser;
    .locals 1

    .line 48
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public static getDefaultInstance()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;
    .locals 1

    .line 701
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 125
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
    .locals 1

    .line 355
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
    .locals 1

    .line 358
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 329
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 336
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 296
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 302
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 342
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 348
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 349
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 317
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 324
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 285
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 291
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 306
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 312
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;",
            ">;"
        }
    .end annotation

    .line 716
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 253
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    if-nez v1, :cond_1

    .line 254
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 256
    :cond_1
    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    .line 258
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->getId()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 260
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->getDerivedKey()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->getDerivedKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 262
    :cond_3
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;
    .locals 1

    .line 726
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    return-object v0
.end method

.method public getDerivedKey()Ljava/lang/String;
    .locals 2

    .line 179
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->derivedKey_:Ljava/lang/Object;

    .line 180
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 181
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 183
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 185
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 186
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->derivedKey_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDerivedKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 196
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->derivedKey_:Ljava/lang/Object;

    .line 197
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 198
    check-cast v0, Ljava/lang/String;

    .line 199
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 201
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->derivedKey_:Ljava/lang/Object;

    return-object v0

    .line 204
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 143
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->id_:Ljava/lang/Object;

    .line 144
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 145
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 147
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 149
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 150
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 160
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->id_:Ljava/lang/Object;

    .line 161
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 162
    check-cast v0, Ljava/lang/String;

    .line 163
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 165
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->id_:Ljava/lang/Object;

    return-object v0

    .line 168
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
            "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;",
            ">;"
        }
    .end annotation

    .line 721
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 233
    iget v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 237
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 238
    iget-object v2, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->id_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->getDerivedKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 241
    iget-object v2, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->derivedKey_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 243
    :cond_2
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 244
    iput v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 268
    iget v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 269
    iget v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 272
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 274
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 276
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->getDerivedKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 277
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 278
    iput v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 131
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    const-class v2, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 211
    iget-byte v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 215
    :cond_1
    iput-byte v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->newBuilderForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->newBuilderForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
    .locals 1

    .line 353
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->newBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
    .locals 2

    .line 369
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 66
    new-instance p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;
    .locals 2

    .line 362
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 363
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;-><init>(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;-><init>(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam$Builder;

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

    .line 222
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 223
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->id_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 225
    :cond_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->getDerivedKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 226
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->derivedKey_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 228
    :cond_1
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

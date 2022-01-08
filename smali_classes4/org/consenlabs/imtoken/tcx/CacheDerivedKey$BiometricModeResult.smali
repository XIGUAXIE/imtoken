.class public final Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "CacheDerivedKey.java"

# interfaces
.implements Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BiometricModeResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

.field public static final MODE_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private memoizedIsInitialized:B

.field private volatile mode_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3326
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    .line 3334
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$1;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$1;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2822
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 2930
    iput-byte v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->memoizedIsInitialized:B

    const-string v0, ""

    .line 2823
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->mode_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2842
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;-><init>()V

    if-eqz p2, :cond_4

    .line 2847
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 2851
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_1

    .line 2863
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 2857
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 2859
    iput-object v2, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->mode_:Ljava/lang/Object;
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

    .line 2874
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 2875
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 2872
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2877
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2878
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->makeExtensionsImmutable()V

    .line 2879
    throw p1

    .line 2877
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2878
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->makeExtensionsImmutable()V

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 2844
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2813
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 2820
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 2930
    iput-byte p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V
    .locals 0

    .line 2813
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$5500()Z
    .locals 1

    .line 2813
    sget-boolean v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5700(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;)Ljava/lang/Object;
    .locals 0

    .line 2813
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->mode_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5702(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2813
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->mode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5800(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 2813
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$5900()Lcom/google/protobuf/Parser;
    .locals 1

    .line 2813
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 2813
    invoke-static {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;
    .locals 1

    .line 3330
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2883
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$5100()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;
    .locals 1

    .line 3067
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;
    .locals 1

    .line 3070
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3040
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 3041
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3047
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 3048
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3008
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3014
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3053
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 3054
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3060
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 3061
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3028
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 3029
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3035
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 3036
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2997
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3003
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3018
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3024
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;",
            ">;"
        }
    .end annotation

    .line 3345
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 2969
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    if-nez v1, :cond_1

    .line 2970
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 2972
    :cond_1
    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    .line 2974
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->getMode()Ljava/lang/String;

    move-result-object v1

    .line 2975
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 2976
    :cond_2
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2813
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2813
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;
    .locals 1

    .line 3355
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 2

    .line 2901
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->mode_:Ljava/lang/Object;

    .line 2902
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2903
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2905
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2907
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2908
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->mode_:Ljava/lang/Object;

    return-object v0
.end method

.method public getModeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2918
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->mode_:Ljava/lang/Object;

    .line 2919
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2920
    check-cast v0, Ljava/lang/String;

    .line 2921
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2923
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->mode_:Ljava/lang/Object;

    return-object v0

    .line 2926
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
            "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;",
            ">;"
        }
    .end annotation

    .line 3350
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 2952
    iget v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2956
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->getModeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 2957
    iget-object v2, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->mode_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2959
    :cond_1
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2960
    iput v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 2836
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 2982
    iget v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 2983
    iget v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 2986
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 2988
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->getMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 2989
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 2990
    iput v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 2889
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$5200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    const-class v2, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    .line 2890
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 2933
    iget-byte v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 2937
    :cond_1
    iput-byte v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2813
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->newBuilderForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2813
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2813
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->newBuilderForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;
    .locals 1

    .line 3065
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->newBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;
    .locals 2

    .line 3081
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 2830
    new-instance p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2813
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2813
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;
    .locals 2

    .line 3074
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 3075
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;-><init>(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;-><init>(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult$Builder;

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

    .line 2944
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->getModeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2945
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->mode_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 2947
    :cond_0
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.class public final Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "CacheDerivedKey.java"

# interfaces
.implements Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DerivedKeyResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

.field public static final DERIVEDKEY_FIELD_NUMBER:I = 0x2

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;",
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

    .line 1411
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    .line 1419
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$1;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$1;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 771
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 922
    iput-byte v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->memoizedIsInitialized:B

    const-string v0, ""

    .line 772
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->id_:Ljava/lang/Object;

    .line 773
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->derivedKey_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 792
    invoke-direct {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;-><init>()V

    if-eqz p2, :cond_5

    .line 797
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 801
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 819
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 813
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 815
    iput-object v2, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->derivedKey_:Ljava/lang/Object;

    goto :goto_0

    .line 807
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 809
    iput-object v2, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->id_:Ljava/lang/Object;
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

    .line 830
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 831
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 828
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 833
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 834
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->makeExtensionsImmutable()V

    .line 835
    throw p1

    .line 833
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 834
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->makeExtensionsImmutable()V

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 794
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 762
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 769
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 922
    iput-byte p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V
    .locals 0

    .line 762
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1700()Z
    .locals 1

    .line 762
    sget-boolean v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1900(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;)Ljava/lang/Object;
    .locals 0

    .line 762
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->id_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1902(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 762
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->id_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2000(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;)Ljava/lang/Object;
    .locals 0

    .line 762
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->derivedKey_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2002(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 762
    iput-object p1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->derivedKey_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2100(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 762
    iget-object p0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$2200()Lcom/google/protobuf/Parser;
    .locals 1

    .line 762
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 762
    invoke-static {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 762
    invoke-static {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;
    .locals 1

    .line 1415
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 839
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$1300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
    .locals 1

    .line 1069
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
    .locals 1

    .line 1072
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1042
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 1043
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1049
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 1050
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1010
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1016
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1055
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 1056
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1062
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 1063
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1030
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 1031
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1037
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 1038
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 999
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1005
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1020
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1026
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;",
            ">;"
        }
    .end annotation

    .line 1430
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 967
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    if-nez v1, :cond_1

    .line 968
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 970
    :cond_1
    check-cast p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    .line 972
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->getId()Ljava/lang/String;

    move-result-object v1

    .line 973
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 974
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->getDerivedKey()Ljava/lang/String;

    move-result-object v1

    .line 975
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->getDerivedKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 976
    :cond_3
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 762
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 762
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;
    .locals 1

    .line 1440
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    return-object v0
.end method

.method public getDerivedKey()Ljava/lang/String;
    .locals 2

    .line 893
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->derivedKey_:Ljava/lang/Object;

    .line 894
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 895
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 897
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 899
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 900
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->derivedKey_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDerivedKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 910
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->derivedKey_:Ljava/lang/Object;

    .line 911
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 912
    check-cast v0, Ljava/lang/String;

    .line 913
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 915
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->derivedKey_:Ljava/lang/Object;

    return-object v0

    .line 918
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 857
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->id_:Ljava/lang/Object;

    .line 858
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 859
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 861
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 863
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 864
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->id_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 874
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->id_:Ljava/lang/Object;

    .line 875
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 876
    check-cast v0, Ljava/lang/String;

    .line 877
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 879
    iput-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->id_:Ljava/lang/Object;

    return-object v0

    .line 882
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
            "Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;",
            ">;"
        }
    .end annotation

    .line 1435
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 947
    iget v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 951
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 952
    iget-object v2, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->id_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 954
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->getDerivedKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 955
    iget-object v2, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->derivedKey_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 957
    :cond_2
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 958
    iput v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 786
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 982
    iget v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 983
    iget v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 986
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 988
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 990
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->getDerivedKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 991
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 992
    iput v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 845
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->access$1400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    const-class v2, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    .line 846
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 925
    iget-byte v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 929
    :cond_1
    iput-byte v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 762
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->newBuilderForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 762
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 762
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->newBuilderForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
    .locals 1

    .line 1067
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->newBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
    .locals 2

    .line 1083
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 780
    new-instance p1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 762
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 762
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;
    .locals 2

    .line 1076
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 1077
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;-><init>(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;-><init>(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$1;)V

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;)Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult$Builder;

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

    .line 936
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->getIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 937
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->id_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 939
    :cond_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->getDerivedKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 940
    iget-object v1, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->derivedKey_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 942
    :cond_1
    iget-object v0, p0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

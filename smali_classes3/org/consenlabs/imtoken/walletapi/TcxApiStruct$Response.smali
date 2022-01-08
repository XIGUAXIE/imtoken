.class public final Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "TcxApiStruct.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$ResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/TcxApiStruct;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

.field public static final ERROR_FIELD_NUMBER:I = 0x2

.field public static final ISSUCCESS_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private volatile error_:Ljava/lang/Object;

.field private isSuccess_:Z

.field private memoizedIsInitialized:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1409
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    .line 1417
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$1;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$1;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 838
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 961
    iput-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->memoizedIsInitialized:B

    const-string v0, ""

    .line 839
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->error_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 858
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;-><init>()V

    if-eqz p2, :cond_5

    .line 863
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 867
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0x8

    if-eq v2, v4, :cond_2

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 884
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 878
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 880
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->error_:Ljava/lang/Object;

    goto :goto_0

    .line 874
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->isSuccess_:Z
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

    .line 895
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 896
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 893
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 898
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 899
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->makeExtensionsImmutable()V

    .line 900
    throw p1

    .line 898
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 899
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->makeExtensionsImmutable()V

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 860
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 829
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 836
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 961
    iput-byte p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$1;)V
    .locals 0

    .line 829
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1600()Z
    .locals 1

    .line 829
    sget-boolean v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1802(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;Z)Z
    .locals 0

    .line 829
    iput-boolean p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->isSuccess_:Z

    return p1
.end method

.method static synthetic access$1900(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;)Ljava/lang/Object;
    .locals 0

    .line 829
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->error_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1902(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 829
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->error_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2000(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 829
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$2100()Lcom/google/protobuf/Parser;
    .locals 1

    .line 829
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 829
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;
    .locals 1

    .line 1413
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 904
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct;->access$1200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;
    .locals 1

    .line 1110
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->toBuilder()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;
    .locals 1

    .line 1113
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->toBuilder()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1083
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 1084
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1090
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 1091
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1051
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1057
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1096
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 1097
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1103
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 1104
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1071
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 1072
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1078
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->PARSER:Lcom/google/protobuf/Parser;

    .line 1079
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1040
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1046
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1061
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1067
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;",
            ">;"
        }
    .end annotation

    .line 1428
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1007
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    if-nez v1, :cond_1

    .line 1008
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1010
    :cond_1
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    .line 1012
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->getIsSuccess()Z

    move-result v1

    .line 1013
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->getIsSuccess()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 1014
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->getError()Ljava/lang/String;

    move-result-object v1

    .line 1015
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->getError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 1016
    :cond_3
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v3

    :cond_4
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 829
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 829
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;
    .locals 1

    .line 1438
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 2

    .line 932
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->error_:Ljava/lang/Object;

    .line 933
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 934
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 936
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 938
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 939
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->error_:Ljava/lang/Object;

    return-object v0
.end method

.method public getErrorBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 949
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->error_:Ljava/lang/Object;

    .line 950
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 951
    check-cast v0, Ljava/lang/String;

    .line 952
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 954
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->error_:Ljava/lang/Object;

    return-object v0

    .line 957
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getIsSuccess()Z
    .locals 1

    .line 922
    iget-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->isSuccess_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;",
            ">;"
        }
    .end annotation

    .line 1433
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 986
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 990
    iget-boolean v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->isSuccess_:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 992
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 994
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->getErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 995
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->error_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 997
    :cond_2
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 998
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 852
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1022
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1023
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 1026
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 1029
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->getIsSuccess()Z

    move-result v1

    .line 1028
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 1031
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->getError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 1032
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1033
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 910
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct;->access$1300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    .line 911
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 964
    iget-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 968
    :cond_1
    iput-byte v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 829
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 829
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 829
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;
    .locals 1

    .line 1108
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->newBuilder()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;
    .locals 2

    .line 1124
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 846
    new-instance p1, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 829
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->toBuilder()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 829
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->toBuilder()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;
    .locals 2

    .line 1117
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 1118
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$1;)V

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;)Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response$Builder;

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

    .line 975
    iget-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->isSuccess_:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 976
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 978
    :cond_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->getErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 979
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->error_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 981
    :cond_1
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/TcxApiStruct$Response;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ImkeyApi.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ErrorResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

.field public static final ERROR_FIELD_NUMBER:I = 0x2

.field public static final ISSUCCESS_FIELD_NUMBER:I = 0x1

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;",
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

    .line 1408
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    .line 1416
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$1;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$1;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 837
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 960
    iput-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->memoizedIsInitialized:B

    const-string v0, ""

    .line 838
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->error_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 857
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;-><init>()V

    if-eqz p2, :cond_5

    .line 862
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 866
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0x8

    if-eq v2, v4, :cond_2

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 883
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 877
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 879
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->error_:Ljava/lang/Object;

    goto :goto_0

    .line 873
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->isSuccess_:Z
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

    .line 894
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 895
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 892
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 897
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 898
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->makeExtensionsImmutable()V

    .line 899
    throw p1

    .line 897
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 898
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->makeExtensionsImmutable()V

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 859
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 828
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 835
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 960
    iput-byte p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 828
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$1600()Z
    .locals 1

    .line 828
    sget-boolean v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1802(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;Z)Z
    .locals 0

    .line 828
    iput-boolean p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->isSuccess_:Z

    return p1
.end method

.method static synthetic access$1900(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;)Ljava/lang/Object;
    .locals 0

    .line 828
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->error_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1902(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 828
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->error_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2000(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 828
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$2100()Lcom/google/protobuf/Parser;
    .locals 1

    .line 828
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 828
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;
    .locals 1

    .line 1412
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 903
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$1200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;
    .locals 1

    .line 1109
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;
    .locals 1

    .line 1112
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1082
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 1083
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1089
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 1090
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1050
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1056
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1095
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 1096
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1102
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 1103
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1070
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 1071
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1077
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->PARSER:Lcom/google/protobuf/Parser;

    .line 1078
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1039
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1045
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1060
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1066
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;",
            ">;"
        }
    .end annotation

    .line 1427
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 1006
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    if-nez v1, :cond_1

    .line 1007
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 1009
    :cond_1
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    .line 1011
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->getIsSuccess()Z

    move-result v1

    .line 1012
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->getIsSuccess()Z

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    .line 1013
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->getError()Ljava/lang/String;

    move-result-object v1

    .line 1014
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->getError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 1015
    :cond_3
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v3

    :cond_4
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 828
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 828
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;
    .locals 1

    .line 1437
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 2

    .line 931
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->error_:Ljava/lang/Object;

    .line 932
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 933
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 935
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 937
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 938
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->error_:Ljava/lang/Object;

    return-object v0
.end method

.method public getErrorBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 948
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->error_:Ljava/lang/Object;

    .line 949
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 950
    check-cast v0, Ljava/lang/String;

    .line 951
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 953
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->error_:Ljava/lang/Object;

    return-object v0

    .line 956
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getIsSuccess()Z
    .locals 1

    .line 921
    iget-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->isSuccess_:Z

    return v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;",
            ">;"
        }
    .end annotation

    .line 1432
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 985
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 989
    iget-boolean v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->isSuccess_:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 991
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 993
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->getErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 994
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->error_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 996
    :cond_2
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 997
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 851
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1021
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 1022
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 1025
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 1028
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->getIsSuccess()Z

    move-result v1

    .line 1027
    invoke-static {v1}, Lcom/google/protobuf/Internal;->hashBoolean(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 1030
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->getError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 1031
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 1032
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 909
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$1300()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;

    .line 910
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 963
    iget-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 967
    :cond_1
    iput-byte v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 828
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 828
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 828
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;
    .locals 1

    .line 1107
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;
    .locals 2

    .line 1123
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 845
    new-instance p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 828
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 828
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;
    .locals 2

    .line 1116
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 1117
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse$Builder;

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

    .line 974
    iget-boolean v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->isSuccess_:Z

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 975
    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 977
    :cond_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->getErrorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 978
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->error_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 980
    :cond_1
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ErrorResponse;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

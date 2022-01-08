.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ImkeyApi.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExternalAddress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    }
.end annotation


# static fields
.field public static final ADDRESS_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

.field public static final DERIVEDPATH_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private volatile address_:Ljava/lang/Object;

.field private volatile derivedPath_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile type_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6657
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    .line 6665
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$1;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$1;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5881
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6075
    iput-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->memoizedIsInitialized:B

    const-string v0, ""

    .line 5882
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->address_:Ljava/lang/Object;

    .line 5883
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->derivedPath_:Ljava/lang/Object;

    .line 5884
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->type_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5903
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;-><init>()V

    if-eqz p2, :cond_6

    .line 5908
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 5912
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3

    const/16 v4, 0x12

    if-eq v2, v4, :cond_2

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 5936
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 5930
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5932
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->type_:Ljava/lang/Object;

    goto :goto_0

    .line 5924
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5926
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->derivedPath_:Ljava/lang/Object;

    goto :goto_0

    .line 5918
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 5920
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->address_:Ljava/lang/Object;
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

    .line 5947
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 5948
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 5945
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5950
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5951
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->makeExtensionsImmutable()V

    .line 5952
    throw p1

    .line 5950
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5951
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->makeExtensionsImmutable()V

    return-void

    :cond_6
    const/4 p1, 0x0

    .line 5905
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5872
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 5879
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 6075
    iput-byte p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 5872
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$10400()Z
    .locals 1

    .line 5872
    sget-boolean v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$10600(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;)Ljava/lang/Object;
    .locals 0

    .line 5872
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->address_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$10602(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5872
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->address_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10700(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;)Ljava/lang/Object;
    .locals 0

    .line 5872
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->derivedPath_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$10702(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5872
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->derivedPath_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10800(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;)Ljava/lang/Object;
    .locals 0

    .line 5872
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->type_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$10802(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5872
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->type_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$10900(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 5872
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$11000()Lcom/google/protobuf/Parser;
    .locals 1

    .line 5872
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$11100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 5872
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11200(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 5872
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$11300(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 5872
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;
    .locals 1

    .line 6661
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5956
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$10000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 1

    .line 6232
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 1

    .line 6235
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6205
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->PARSER:Lcom/google/protobuf/Parser;

    .line 6206
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6212
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->PARSER:Lcom/google/protobuf/Parser;

    .line 6213
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6173
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6179
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6218
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->PARSER:Lcom/google/protobuf/Parser;

    .line 6219
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6225
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->PARSER:Lcom/google/protobuf/Parser;

    .line 6226
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6193
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->PARSER:Lcom/google/protobuf/Parser;

    .line 6194
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6200
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->PARSER:Lcom/google/protobuf/Parser;

    .line 6201
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6162
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6168
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6183
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6189
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;",
            ">;"
        }
    .end annotation

    .line 6676
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 6126
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    if-nez v1, :cond_1

    .line 6127
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 6129
    :cond_1
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    .line 6131
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 6132
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 6133
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getDerivedPath()Ljava/lang/String;

    move-result-object v1

    .line 6134
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getDerivedPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 6135
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getType()Ljava/lang/String;

    move-result-object v1

    .line 6136
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 6137
    :cond_4
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 2

    .line 5974
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->address_:Ljava/lang/Object;

    .line 5975
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5976
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5978
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5980
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5981
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->address_:Ljava/lang/Object;

    return-object v0
.end method

.method public getAddressBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 5991
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->address_:Ljava/lang/Object;

    .line 5992
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5993
    check-cast v0, Ljava/lang/String;

    .line 5994
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5996
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->address_:Ljava/lang/Object;

    return-object v0

    .line 5999
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 5872
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5872
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;
    .locals 1

    .line 6686
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    return-object v0
.end method

.method public getDerivedPath()Ljava/lang/String;
    .locals 2

    .line 6010
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->derivedPath_:Ljava/lang/Object;

    .line 6011
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6012
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 6014
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6016
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6017
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->derivedPath_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDerivedPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 6027
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->derivedPath_:Ljava/lang/Object;

    .line 6028
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6029
    check-cast v0, Ljava/lang/String;

    .line 6030
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6032
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->derivedPath_:Ljava/lang/Object;

    return-object v0

    .line 6035
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
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;",
            ">;"
        }
    .end annotation

    .line 6681
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 6103
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 6107
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 6108
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->address_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6110
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getDerivedPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 6111
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->derivedPath_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6113
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 6114
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->type_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6116
    :cond_3
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 6117
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->memoizedSize:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 2

    .line 6046
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->type_:Ljava/lang/Object;

    .line 6047
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6048
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 6050
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 6052
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 6053
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->type_:Ljava/lang/Object;

    return-object v0
.end method

.method public getTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 6063
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->type_:Ljava/lang/Object;

    .line 6064
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 6065
    check-cast v0, Ljava/lang/String;

    .line 6066
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6068
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->type_:Ljava/lang/Object;

    return-object v0

    .line 6071
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 5897
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 6143
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 6144
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 6147
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 6149
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 6151
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getDerivedPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 6153
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 6154
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 6155
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 5962
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$10100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    .line 5963
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 6078
    iget-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 6082
    :cond_1
    iput-byte v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5872
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5872
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5872
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 1

    .line 6230
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 2

    .line 6246
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 5891
    new-instance p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5872
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5872
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;
    .locals 2

    .line 6239
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 6240
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress$Builder;

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

    .line 6089
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getAddressBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 6090
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->address_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 6092
    :cond_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getDerivedPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 6093
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->derivedPath_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 6095
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->getTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 6096
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->type_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 6098
    :cond_2
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$ExternalAddress;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

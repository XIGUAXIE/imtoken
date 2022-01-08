.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ImkeyApi.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParamOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PubKeyParam"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    }
.end annotation


# static fields
.field public static final CHAINTYPE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

.field public static final ISSEGWIT_FIELD_NUMBER:I = 0x4

.field public static final NETWORK_FIELD_NUMBER:I = 0x3

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x2

.field private static final serialVersionUID:J


# instance fields
.field private volatile chainType_:Ljava/lang/Object;

.field private volatile isSegWit_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile network_:Ljava/lang/Object;

.field private volatile path_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4785
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    .line 4793
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$1;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$1;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3873
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 4110
    iput-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->memoizedIsInitialized:B

    const-string v0, ""

    .line 3874
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->chainType_:Ljava/lang/Object;

    .line 3875
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->path_:Ljava/lang/Object;

    .line 3876
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->network_:Ljava/lang/Object;

    .line 3877
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->isSegWit_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3896
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;-><init>()V

    if-eqz p2, :cond_7

    .line 3901
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 3905
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

    const/16 v4, 0x22

    if-eq v2, v4, :cond_1

    .line 3935
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 3929
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3931
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->isSegWit_:Ljava/lang/Object;

    goto :goto_0

    .line 3923
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3925
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->network_:Ljava/lang/Object;

    goto :goto_0

    .line 3917
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3919
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->path_:Ljava/lang/Object;

    goto :goto_0

    .line 3911
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 3913
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->chainType_:Ljava/lang/Object;
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

    .line 3946
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 3947
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 3944
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3949
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3950
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->makeExtensionsImmutable()V

    .line 3951
    throw p1

    .line 3949
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 3950
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->makeExtensionsImmutable()V

    return-void

    :cond_7
    const/4 p1, 0x0

    .line 3898
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3864
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 3871
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 4110
    iput-byte p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 3864
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$7000()Z
    .locals 1

    .line 3864
    sget-boolean v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$7200(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;)Ljava/lang/Object;
    .locals 0

    .line 3864
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->chainType_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$7202(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3864
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->chainType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7300(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;)Ljava/lang/Object;
    .locals 0

    .line 3864
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->path_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$7302(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3864
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->path_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7400(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;)Ljava/lang/Object;
    .locals 0

    .line 3864
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->network_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$7402(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3864
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->network_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7500(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;)Ljava/lang/Object;
    .locals 0

    .line 3864
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->isSegWit_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$7502(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3864
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->isSegWit_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7600(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 3864
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$7700()Lcom/google/protobuf/Parser;
    .locals 1

    .line 3864
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3864
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$7900(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3864
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3864
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$8100(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 3864
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;
    .locals 1

    .line 4789
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3955
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$6600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 1

    .line 4277
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 1

    .line 4280
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4250
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 4251
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4257
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 4258
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4218
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4224
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4263
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 4264
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4270
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 4271
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4238
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 4239
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4245
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    .line 4246
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4207
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4213
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4228
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4234
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;",
            ">;"
        }
    .end annotation

    .line 4804
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 4167
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    if-nez v1, :cond_1

    .line 4168
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 4170
    :cond_1
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    .line 4172
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getChainType()Ljava/lang/String;

    move-result-object v1

    .line 4173
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getChainType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 4174
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 4175
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 4176
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getNetwork()Ljava/lang/String;

    move-result-object v1

    .line 4177
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getNetwork()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 4178
    :cond_4
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getIsSegWit()Ljava/lang/String;

    move-result-object v1

    .line 4179
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getIsSegWit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 4180
    :cond_5
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public getChainType()Ljava/lang/String;
    .locals 2

    .line 3973
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->chainType_:Ljava/lang/Object;

    .line 3974
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3975
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 3977
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3979
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 3980
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->chainType_:Ljava/lang/Object;

    return-object v0
.end method

.method public getChainTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3990
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->chainType_:Ljava/lang/Object;

    .line 3991
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3992
    check-cast v0, Ljava/lang/String;

    .line 3993
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3995
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->chainType_:Ljava/lang/Object;

    return-object v0

    .line 3998
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3864
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3864
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;
    .locals 1

    .line 4814
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    return-object v0
.end method

.method public getIsSegWit()Ljava/lang/String;
    .locals 2

    .line 4081
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->isSegWit_:Ljava/lang/Object;

    .line 4082
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4083
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4085
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4087
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4088
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->isSegWit_:Ljava/lang/Object;

    return-object v0
.end method

.method public getIsSegWitBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4098
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->isSegWit_:Ljava/lang/Object;

    .line 4099
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4100
    check-cast v0, Ljava/lang/String;

    .line 4101
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4103
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->isSegWit_:Ljava/lang/Object;

    return-object v0

    .line 4106
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 2

    .line 4045
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->network_:Ljava/lang/Object;

    .line 4046
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4047
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4049
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4051
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4052
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->network_:Ljava/lang/Object;

    return-object v0
.end method

.method public getNetworkBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4062
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->network_:Ljava/lang/Object;

    .line 4063
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4064
    check-cast v0, Ljava/lang/String;

    .line 4065
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4067
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->network_:Ljava/lang/Object;

    return-object v0

    .line 4070
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
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;",
            ">;"
        }
    .end annotation

    .line 4809
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 4009
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->path_:Ljava/lang/Object;

    .line 4010
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4011
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4013
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4015
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4016
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->path_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4026
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->path_:Ljava/lang/Object;

    .line 4027
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4028
    check-cast v0, Ljava/lang/String;

    .line 4029
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4031
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->path_:Ljava/lang/Object;

    return-object v0

    .line 4034
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 4141
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 4145
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getChainTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 4146
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->chainType_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4148
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 4149
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->path_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4151
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getNetworkBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 4152
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->network_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4154
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getIsSegWitBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 4155
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->isSegWit_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4157
    :cond_4
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 4158
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 3890
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 4186
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 4187
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 4190
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 4192
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getChainType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 4194
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 4196
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getNetwork()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 4198
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getIsSegWit()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 4199
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 4200
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 3961
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$6700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    .line 3962
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 4113
    iget-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 4117
    :cond_1
    iput-byte v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3864
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3864
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3864
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 1

    .line 4275
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 2

    .line 4291
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 3884
    new-instance p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3864
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3864
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;
    .locals 2

    .line 4284
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4285
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam$Builder;

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

    .line 4124
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getChainTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 4125
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->chainType_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4127
    :cond_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 4128
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->path_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4130
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getNetworkBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 4131
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->network_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4133
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->getIsSegWitBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 4134
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->isSegWit_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 4136
    :cond_3
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyParam;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

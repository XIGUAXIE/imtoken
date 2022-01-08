.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ImkeyApi.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResultOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PubKeyResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    }
.end annotation


# static fields
.field public static final CHAINTYPE_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

.field public static final DERIVEDMODE_FIELD_NUMBER:I = 0x4

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x1

.field public static final PUBKEY_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private volatile chainType_:Ljava/lang/Object;

.field private volatile derivedMode_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile path_:Ljava/lang/Object;

.field private volatile pubKey_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5795
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    .line 5803
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$1;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$1;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4883
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 5120
    iput-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->memoizedIsInitialized:B

    const-string v0, ""

    .line 4884
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->path_:Ljava/lang/Object;

    .line 4885
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->chainType_:Ljava/lang/Object;

    .line 4886
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->pubKey_:Ljava/lang/Object;

    .line 4887
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->derivedMode_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4906
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;-><init>()V

    if-eqz p2, :cond_7

    .line 4911
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 4915
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

    .line 4945
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 4939
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4941
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->derivedMode_:Ljava/lang/Object;

    goto :goto_0

    .line 4933
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4935
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->pubKey_:Ljava/lang/Object;

    goto :goto_0

    .line 4927
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4929
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->chainType_:Ljava/lang/Object;

    goto :goto_0

    .line 4921
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 4923
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->path_:Ljava/lang/Object;
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

    .line 4956
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 4957
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 4954
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4959
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 4960
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->makeExtensionsImmutable()V

    .line 4961
    throw p1

    .line 4959
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 4960
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->makeExtensionsImmutable()V

    return-void

    :cond_7
    const/4 p1, 0x0

    .line 4908
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4874
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 4881
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 5120
    iput-byte p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 4874
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$8700()Z
    .locals 1

    .line 4874
    sget-boolean v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$8900(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;)Ljava/lang/Object;
    .locals 0

    .line 4874
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->path_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$8902(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4874
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->path_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9000(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;)Ljava/lang/Object;
    .locals 0

    .line 4874
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->chainType_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$9002(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4874
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->chainType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9100(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;)Ljava/lang/Object;
    .locals 0

    .line 4874
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->pubKey_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$9102(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4874
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->pubKey_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9200(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;)Ljava/lang/Object;
    .locals 0

    .line 4874
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->derivedMode_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$9202(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4874
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->derivedMode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$9300(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 4874
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$9400()Lcom/google/protobuf/Parser;
    .locals 1

    .line 4874
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4874
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4874
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4874
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$9800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 4874
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;
    .locals 1

    .line 5799
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4965
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$8300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 1

    .line 5287
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 1

    .line 5290
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5260
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 5261
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5267
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 5268
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5228
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5234
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5273
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 5274
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5280
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 5281
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5248
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 5249
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5255
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    .line 5256
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5217
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5223
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5238
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5244
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;",
            ">;"
        }
    .end annotation

    .line 5814
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 5177
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    if-nez v1, :cond_1

    .line 5178
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 5180
    :cond_1
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    .line 5182
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 5183
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 5184
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getChainType()Ljava/lang/String;

    move-result-object v1

    .line 5185
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getChainType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 5186
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getPubKey()Ljava/lang/String;

    move-result-object v1

    .line 5187
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getPubKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 5188
    :cond_4
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getDerivedMode()Ljava/lang/String;

    move-result-object v1

    .line 5189
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getDerivedMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 5190
    :cond_5
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public getChainType()Ljava/lang/String;
    .locals 2

    .line 5019
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->chainType_:Ljava/lang/Object;

    .line 5020
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5021
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5023
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5025
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5026
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->chainType_:Ljava/lang/Object;

    return-object v0
.end method

.method public getChainTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 5036
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->chainType_:Ljava/lang/Object;

    .line 5037
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5038
    check-cast v0, Ljava/lang/String;

    .line 5039
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5041
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->chainType_:Ljava/lang/Object;

    return-object v0

    .line 5044
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 4874
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 4874
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;
    .locals 1

    .line 5824
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    return-object v0
.end method

.method public getDerivedMode()Ljava/lang/String;
    .locals 2

    .line 5091
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->derivedMode_:Ljava/lang/Object;

    .line 5092
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5093
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5095
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5097
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5098
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->derivedMode_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDerivedModeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 5108
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->derivedMode_:Ljava/lang/Object;

    .line 5109
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5110
    check-cast v0, Ljava/lang/String;

    .line 5111
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5113
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->derivedMode_:Ljava/lang/Object;

    return-object v0

    .line 5116
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
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;",
            ">;"
        }
    .end annotation

    .line 5819
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 4983
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->path_:Ljava/lang/Object;

    .line 4984
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4985
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4987
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4989
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 4990
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->path_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 5000
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->path_:Ljava/lang/Object;

    .line 5001
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5002
    check-cast v0, Ljava/lang/String;

    .line 5003
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5005
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->path_:Ljava/lang/Object;

    return-object v0

    .line 5008
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPubKey()Ljava/lang/String;
    .locals 2

    .line 5055
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->pubKey_:Ljava/lang/Object;

    .line 5056
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5057
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5059
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5061
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 5062
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->pubKey_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPubKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 5072
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->pubKey_:Ljava/lang/Object;

    .line 5073
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5074
    check-cast v0, Ljava/lang/String;

    .line 5075
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5077
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->pubKey_:Ljava/lang/Object;

    return-object v0

    .line 5080
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 5151
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 5155
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 5156
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->path_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5158
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getChainTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 5159
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->chainType_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5161
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getPubKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 5162
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->pubKey_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5164
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getDerivedModeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 5165
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->derivedMode_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5167
    :cond_4
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 5168
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 4900
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 5196
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 5197
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 5200
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 5202
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 5204
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getChainType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 5206
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getPubKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    .line 5208
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getDerivedMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 5209
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 5210
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 4971
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$8400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    .line 4972
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 5123
    iget-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 5127
    :cond_1
    iput-byte v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4874
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 4874
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4874
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 1

    .line 5285
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 2

    .line 5301
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 4894
    new-instance p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 4874
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 4874
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;
    .locals 2

    .line 5294
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 5295
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult$Builder;

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

    .line 5134
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 5135
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->path_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5137
    :cond_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getChainTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 5138
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->chainType_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5140
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getPubKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 5141
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->pubKey_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5143
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->getDerivedModeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 5144
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->derivedMode_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 5146
    :cond_3
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$PubKeyResult;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.class public final Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;
.super Lcom/google/protobuf/GeneratedMessageV3;
.source "ImkeyApi.java"

# interfaces
.implements Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PubKeyInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

.field public static final DERIVEDMODE_FIELD_NUMBER:I = 0x2

.field private static final PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x1

.field public static final PUBLICKEY_FIELD_NUMBER:I = 0x3

.field private static final serialVersionUID:J


# instance fields
.field private volatile derivedMode_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private volatile path_:Ljava/lang/Object;

.field private volatile publicKey_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8886
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    .line 8894
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$1;

    invoke-direct {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$1;-><init>()V

    sput-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 8110
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 8304
    iput-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->memoizedIsInitialized:B

    const-string v0, ""

    .line 8111
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->path_:Ljava/lang/Object;

    .line 8112
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->derivedMode_:Ljava/lang/Object;

    .line 8113
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->publicKey_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8132
    invoke-direct {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;-><init>()V

    if-eqz p2, :cond_6

    .line 8137
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 8141
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

    .line 8165
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 8159
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8161
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->publicKey_:Ljava/lang/Object;

    goto :goto_0

    .line 8153
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8155
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->derivedMode_:Ljava/lang/Object;

    goto :goto_0

    .line 8147
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 8149
    iput-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->path_:Ljava/lang/Object;
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

    .line 8176
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 8177
    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 8174
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8179
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 8180
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->makeExtensionsImmutable()V

    .line 8181
    throw p1

    .line 8179
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 8180
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->makeExtensionsImmutable()V

    return-void

    :cond_6
    const/4 p1, 0x0

    .line 8134
    throw p1
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8101
    invoke-direct {p0, p1, p2}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 8108
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    const/4 p1, -0x1

    .line 8304
    iput-byte p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V
    .locals 0

    .line 8101
    invoke-direct {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;-><init>(Lcom/google/protobuf/GeneratedMessageV3$Builder;)V

    return-void
.end method

.method static synthetic access$13900()Z
    .locals 1

    .line 8101
    sget-boolean v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$14100(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;)Ljava/lang/Object;
    .locals 0

    .line 8101
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->path_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$14102(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8101
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->path_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14200(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;)Ljava/lang/Object;
    .locals 0

    .line 8101
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->derivedMode_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$14202(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8101
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->derivedMode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14300(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;)Ljava/lang/Object;
    .locals 0

    .line 8101
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->publicKey_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$14302(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 8101
    iput-object p1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->publicKey_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$14400(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;)Lcom/google/protobuf/UnknownFieldSet;
    .locals 0

    .line 8101
    iget-object p0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object p0
.end method

.method static synthetic access$14500()Lcom/google/protobuf/Parser;
    .locals 1

    .line 8101
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method static synthetic access$14600(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 8101
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$14700(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 8101
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$14800(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 8101
    invoke-static {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static getDefaultInstance()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;
    .locals 1

    .line 8890
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8185
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$13500()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 1

    .line 8461
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 1

    .line 8464
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    invoke-virtual {v0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8434
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 8435
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8441
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 8442
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8402
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8408
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8447
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 8448
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8454
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 8455
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8422
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 8423
    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8429
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    .line 8430
    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/google/protobuf/Parser;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8391
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8397
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8412
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8418
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;",
            ">;"
        }
    .end annotation

    .line 8905
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 8355
    :cond_0
    instance-of v1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    if-nez v1, :cond_1

    .line 8356
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 8358
    :cond_1
    check-cast p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    .line 8360
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 8361
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    .line 8362
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getDerivedMode()Ljava/lang/String;

    move-result-object v1

    .line 8363
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getDerivedMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 8364
    :cond_3
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getPublicKey()Ljava/lang/String;

    move-result-object v1

    .line 8365
    invoke-virtual {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getPublicKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 8366
    :cond_4
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    iget-object p1, p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1, p1}, Lcom/google/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 8101
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8101
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;
    .locals 1

    .line 8915
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    return-object v0
.end method

.method public getDerivedMode()Ljava/lang/String;
    .locals 2

    .line 8239
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->derivedMode_:Ljava/lang/Object;

    .line 8240
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8241
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 8243
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8245
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 8246
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->derivedMode_:Ljava/lang/Object;

    return-object v0
.end method

.method public getDerivedModeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 8256
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->derivedMode_:Ljava/lang/Object;

    .line 8257
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8258
    check-cast v0, Ljava/lang/String;

    .line 8259
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8261
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->derivedMode_:Ljava/lang/Object;

    return-object v0

    .line 8264
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
            "Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;",
            ">;"
        }
    .end annotation

    .line 8910
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 2

    .line 8203
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->path_:Ljava/lang/Object;

    .line 8204
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8205
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 8207
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8209
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 8210
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->path_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPathBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 8220
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->path_:Ljava/lang/Object;

    .line 8221
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8222
    check-cast v0, Ljava/lang/String;

    .line 8223
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8225
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->path_:Ljava/lang/Object;

    return-object v0

    .line 8228
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 2

    .line 8275
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->publicKey_:Ljava/lang/Object;

    .line 8276
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8277
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 8279
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 8281
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 8282
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->publicKey_:Ljava/lang/Object;

    return-object v0
.end method

.method public getPublicKeyBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 8292
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->publicKey_:Ljava/lang/Object;

    .line 8293
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 8294
    check-cast v0, Ljava/lang/String;

    .line 8295
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 8297
    iput-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->publicKey_:Ljava/lang/Object;

    return-object v0

    .line 8300
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 8332
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->memoizedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 8336
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 8337
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->path_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8339
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getDerivedModeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x2

    .line 8340
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->derivedMode_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8342
    :cond_2
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getPublicKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 8343
    iget-object v2, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->publicKey_:Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/google/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8345
    :cond_3
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 8346
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->memoizedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 8126
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 8372
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 8373
    iget v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->memoizedHashCode:I

    return v0

    :cond_0
    const/16 v0, 0x30b

    .line 8376
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    .line 8378
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    .line 8380
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getDerivedMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    .line 8382
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getPublicKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1d

    .line 8383
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 8384
    iput v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->memoizedHashCode:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 8191
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi;->access$13600()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    const-class v2, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    .line 8192
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 8307
    iget-byte v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 8311
    :cond_1
    iput-byte v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 8101
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8101
    invoke-virtual {p0, p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 8101
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 1

    .line 8459
    invoke-static {}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->newBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 2

    .line 8475
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageV3$BuilderParent;Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/google/protobuf/GeneratedMessageV3$UnusedPrivateParameter;)Ljava/lang/Object;
    .locals 0

    .line 8120
    new-instance p1, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    invoke-direct {p1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;-><init>()V

    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 8101
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 8101
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;
    .locals 2

    .line 8468
    sget-object v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->DEFAULT_INSTANCE:Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 8469
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

    invoke-direct {v0, v1}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;-><init>(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$1;)V

    invoke-virtual {v0, p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;->mergeFrom(Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;)Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo$Builder;

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

    .line 8318
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 8319
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->path_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 8321
    :cond_0
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getDerivedModeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 8322
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->derivedMode_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 8324
    :cond_1
    invoke-virtual {p0}, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->getPublicKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 8325
    iget-object v1, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->publicKey_:Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessageV3;->writeString(Lcom/google/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 8327
    :cond_2
    iget-object v0, p0, Lorg/consenlabs/imtoken/walletapi/ImkeyApi$EosWallet$PubKeyInfo;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.class public final Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;
.super Lcom/google/protobuf/GeneratedMessage;
.source "ClientState.java"

# interfaces
.implements Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannelsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/protocols/channels/ClientState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StoredClientPaymentChannels"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;
    }
.end annotation


# static fields
.field public static final CHANNELS_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;",
            ">;"
        }
    .end annotation
.end field

.field private static final defaultInstance:Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;

.field private static final serialVersionUID:J


# instance fields
.field private channels_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;",
            ">;"
        }
    .end annotation
.end field

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 130
    new-instance v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$1;

    invoke-direct {v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    .line 700
    new-instance v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->defaultInstance:Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;

    .line 701
    invoke-direct {v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 183
    iput-byte v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->memoizedIsInitialized:B

    .line 208
    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->memoizedSerializedSize:I

    .line 76
    invoke-direct {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->initFields()V

    .line 79
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    if-nez v1, :cond_5

    .line 83
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    .line 89
    invoke-virtual {p0, p1, v0, p2, v4}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_1
    and-int/lit8 v4, v2, 0x1

    if-eq v4, v3, :cond_2

    .line 97
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    .line 100
    :cond_2
    iget-object v4, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    sget-object v5, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
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

    .line 108
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 109
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 106
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x1

    if-ne p2, v3, :cond_4

    .line 112
    iget-object p2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    .line 114
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 115
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->makeExtensionsImmutable()V

    throw p1

    :cond_5
    and-int/lit8 p1, v2, 0x1

    if-ne p1, v3, :cond_6

    .line 112
    iget-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    .line 114
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 115
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoinj/protocols/channels/ClientState$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 183
    iput-byte v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->memoizedIsInitialized:B

    .line 208
    iput v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->memoizedSerializedSize:I

    .line 53
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/protocols/channels/ClientState$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 183
    iput-byte p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->memoizedIsInitialized:B

    .line 208
    iput p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->memoizedSerializedSize:I

    .line 55
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 46
    sget-boolean v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$700(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;)Ljava/util/List;
    .locals 0

    .line 46
    iget-object p0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$702(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 46
    sget-boolean v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;
    .locals 1

    .line 59
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->defaultInstance:Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 120
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 181
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;
    .locals 1

    .line 283
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;->access$300()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;
    .locals 1

    .line 286
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->newBuilder()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;->mergeFrom(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 233
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 239
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 280
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 243
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 249
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;

    return-object p0
.end method


# virtual methods
.method public getChannels(I)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    return-object p1
.end method

.method public getChannelsCount()I
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getChannelsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    return-object v0
.end method

.method public getChannelsOrBuilder(I)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannelOrBuilder;
    .locals 1

    .line 177
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannelOrBuilder;

    return-object p1
.end method

.method public getChannelsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannelOrBuilder;",
            ">;"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->getDefaultInstanceForType()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->getDefaultInstanceForType()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;
    .locals 1

    .line 63
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->defaultInstance:Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;",
            ">;"
        }
    .end annotation

    .line 142
    sget-object v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 210
    iget v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 214
    :goto_0
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 215
    iget-object v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    .line 216
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v0

    add-int/2addr v1, v0

    .line 219
    iput v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->memoizedSerializedSize:I

    return v1
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 125
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;

    const-class v2, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 185
    iget-byte v0, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 189
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->getChannelsCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 190
    invoke-virtual {p0, v0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->getChannels(I)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannel;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 191
    iput-byte v2, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_3
    iput-byte v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->newBuilderForType()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 46
    invoke-virtual {p0, p1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->newBuilderForType()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;
    .locals 1

    .line 284
    invoke-static {}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->newBuilder()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;
    .locals 2

    .line 293
    new-instance v0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/protocols/channels/ClientState$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->toBuilder()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->toBuilder()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;
    .locals 1

    .line 288
    invoke-static {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->newBuilder(Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;)Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 227
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->getSerializedSize()I

    const/4 v0, 0x0

    .line 202
    :goto_0
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 203
    iget-object v1, p0, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->channels_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/protocols/channels/ClientState$StoredClientPaymentChannels;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

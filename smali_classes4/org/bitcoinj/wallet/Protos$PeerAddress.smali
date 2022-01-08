.class public final Lorg/bitcoinj/wallet/Protos$PeerAddress;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$PeerAddressOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PeerAddress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    }
.end annotation


# static fields
.field public static final IP_ADDRESS_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress;",
            ">;"
        }
    .end annotation
.end field

.field public static final PORT_FIELD_NUMBER:I = 0x2

.field public static final SERVICES_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lorg/bitcoinj/wallet/Protos$PeerAddress;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private ipAddress_:Lcom/google/protobuf/ByteString;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private port_:I

.field private services_:J

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 133
    new-instance v0, Lorg/bitcoinj/wallet/Protos$PeerAddress$1;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$1;-><init>()V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    .line 584
    new-instance v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoinj/wallet/Protos$PeerAddress;-><init>(Z)V

    sput-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->defaultInstance:Lorg/bitcoinj/wallet/Protos$PeerAddress;

    .line 585
    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 199
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedIsInitialized:B

    .line 236
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedSerializedSize:I

    .line 75
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->initFields()V

    .line 78
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 82
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    const/16 v4, 0xa

    if-eq v2, v4, :cond_3

    const/16 v4, 0x10

    if-eq v2, v4, :cond_2

    const/16 v4, 0x18

    if-eq v2, v4, :cond_1

    .line 88
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 105
    :cond_1
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    .line 106
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->services_:J

    goto :goto_0

    .line 100
    :cond_2
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    .line 101
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->port_:I

    goto :goto_0

    .line 95
    :cond_3
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    .line 96
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->ipAddress_:Lcom/google/protobuf/ByteString;
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

    .line 114
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 115
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 112
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 118
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->makeExtensionsImmutable()V

    throw p1

    .line 117
    :cond_5
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 118
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$PeerAddress;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 51
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 199
    iput-byte v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedIsInitialized:B

    .line 236
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedSerializedSize:I

    .line 52
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 199
    iput-byte p1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedIsInitialized:B

    .line 236
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedSerializedSize:I

    .line 54
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1002(Lorg/bitcoinj/wallet/Protos$PeerAddress;I)I
    .locals 0

    .line 45
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 45
    sget-boolean v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lorg/bitcoinj/wallet/Protos$PeerAddress;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->ipAddress_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$802(Lorg/bitcoinj/wallet/Protos$PeerAddress;I)I
    .locals 0

    .line 45
    iput p1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->port_:I

    return p1
.end method

.method static synthetic access$902(Lorg/bitcoinj/wallet/Protos$PeerAddress;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->services_:J

    return-wide p1
.end method

.method public static getDefaultInstance()Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1

    .line 58
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->defaultInstance:Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 123
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    .line 195
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->ipAddress_:Lcom/google/protobuf/ByteString;

    const/4 v0, 0x0

    .line 196
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->port_:I

    const-wide/16 v0, 0x0

    .line 197
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->services_:J

    return-void
.end method

.method public static newBuilder()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1

    .line 319
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->access$300()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoinj/wallet/Protos$PeerAddress;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1

    .line 322
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->newBuilder()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$PeerAddress;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 269
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 275
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 279
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 285
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$PeerAddress;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$PeerAddress;
    .locals 1

    .line 62
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->defaultInstance:Lorg/bitcoinj/wallet/Protos$PeerAddress;

    return-object v0
.end method

.method public getIpAddress()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 161
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->ipAddress_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoinj/wallet/Protos$PeerAddress;",
            ">;"
        }
    .end annotation

    .line 145
    sget-object v0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 176
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->port_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 238
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 242
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 243
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->ipAddress_:Lcom/google/protobuf/ByteString;

    .line 244
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 246
    :cond_1
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 247
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->port_:I

    .line 248
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 250
    :cond_2
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 251
    iget-wide v2, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->services_:J

    .line 252
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 254
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 255
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedSerializedSize:I

    return v0
.end method

.method public getServices()J
    .locals 2

    .line 191
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->services_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasIpAddress()Z
    .locals 2

    .line 155
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasPort()Z
    .locals 2

    .line 170
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasServices()Z
    .locals 2

    .line 185
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 128
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$PeerAddress;

    const-class v2, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    .line 129
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 201
    iget-byte v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 205
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->hasIpAddress()Z

    move-result v0

    if-nez v0, :cond_2

    .line 206
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedIsInitialized:B

    return v2

    .line 209
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->hasPort()Z

    move-result v0

    if-nez v0, :cond_3

    .line 210
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedIsInitialized:B

    return v2

    .line 213
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->hasServices()Z

    move-result v0

    if-nez v0, :cond_4

    .line 214
    iput-byte v2, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedIsInitialized:B

    return v2

    .line 217
    :cond_4
    iput-byte v1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->newBuilderForType()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1

    .line 320
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->newBuilder()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 2

    .line 329
    new-instance v0, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->toBuilder()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->toBuilder()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;
    .locals 1

    .line 324
    invoke-static {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->newBuilder(Lorg/bitcoinj/wallet/Protos$PeerAddress;)Lorg/bitcoinj/wallet/Protos$PeerAddress$Builder;

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

    .line 263
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

    .line 223
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getSerializedSize()I

    .line 224
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 225
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->ipAddress_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 227
    :cond_0
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 228
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->port_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 230
    :cond_1
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 231
    iget-wide v1, p0, Lorg/bitcoinj/wallet/Protos$PeerAddress;->services_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 233
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$PeerAddress;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

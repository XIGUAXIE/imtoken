.class public final Lorg/bitcoin/paymentchannel/Protos$Settlement;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$SettlementOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Settlement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/paymentchannel/Protos$Settlement;",
            ">;"
        }
    .end annotation
.end field

.field public static final TX_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Settlement;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private tx_:Lcom/google/protobuf/ByteString;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8262
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Settlement$1;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$1;-><init>()V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    .line 8599
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Settlement;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 8600
    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8213
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 8306
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->memoizedIsInitialized:B

    .line 8329
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->memoizedSerializedSize:I

    .line 8214
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->initFields()V

    .line 8217
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 8221
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 8227
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 8234
    :cond_1
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->bitField0_:I

    .line 8235
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->tx_:Lcom/google/protobuf/ByteString;
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

    .line 8243
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 8244
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 8241
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8246
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 8247
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->makeExtensionsImmutable()V

    throw p1

    .line 8246
    :cond_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 8247
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8184
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Settlement;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 8190
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 8306
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->memoizedIsInitialized:B

    .line 8329
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->memoizedSerializedSize:I

    .line 8191
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0

    .line 8184
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Settlement;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 8193
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 8306
    iput-byte p1, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->memoizedIsInitialized:B

    .line 8329
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->memoizedSerializedSize:I

    .line 8193
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$10800()Z
    .locals 1

    .line 8184
    sget-boolean v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$11002(Lorg/bitcoin/paymentchannel/Protos$Settlement;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 8184
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->tx_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$11102(Lorg/bitcoin/paymentchannel/Protos$Settlement;I)I
    .locals 0

    .line 8184
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1

    .line 8197
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 8252
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$10300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 8304
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->tx_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    .locals 1

    .line 8404
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->access$10600()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    .locals 1

    .line 8407
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8384
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8390
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8354
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8360
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8395
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8401
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8374
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8380
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8364
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8370
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 8184
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 8184
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1

    .line 8201
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/paymentchannel/Protos$Settlement;",
            ">;"
        }
    .end annotation

    .line 8274
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 8331
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 8335
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    .line 8336
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->tx_:Lcom/google/protobuf/ByteString;

    .line 8337
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8339
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 8340
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->memoizedSerializedSize:I

    return v0
.end method

.method public getTx()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 8300
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->tx_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 8208
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasTx()Z
    .locals 2

    .line 8289
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 8257
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$10400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    .line 8258
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 8308
    iget-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 8312
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->hasTx()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8313
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->memoizedIsInitialized:B

    return v2

    .line 8316
    :cond_2
    iput-byte v1, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 8184
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 8184
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 8184
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    .locals 1

    .line 8405
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    .locals 2

    .line 8414
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 8184
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 8184
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;
    .locals 1

    .line 8409
    invoke-static {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

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

    .line 8348
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8322
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getSerializedSize()I

    .line 8323
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    .line 8324
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$Settlement;->tx_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 8326
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

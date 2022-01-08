.class public final Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$ProvideRefundOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideRefund"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    }
.end annotation


# static fields
.field public static final MULTISIG_KEY_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;",
            ">;"
        }
    .end annotation
.end field

.field public static final TX_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private multisigKey_:Lcom/google/protobuf/ByteString;

.field private tx_:Lcom/google/protobuf/ByteString;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5087
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$1;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$1;-><init>()V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    .line 5569
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 5570
    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5033
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 5169
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->memoizedIsInitialized:B

    .line 5199
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->memoizedSerializedSize:I

    .line 5034
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->initFields()V

    .line 5037
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    .line 5041
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 5047
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 5059
    :cond_1
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->bitField0_:I

    .line 5060
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->tx_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 5054
    :cond_2
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->bitField0_:I

    .line 5055
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->multisigKey_:Lcom/google/protobuf/ByteString;
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

    .line 5068
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 5069
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 5066
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5071
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5072
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->makeExtensionsImmutable()V

    throw p1

    .line 5071
    :cond_4
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5072
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5004
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 5010
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 5169
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->memoizedIsInitialized:B

    .line 5199
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->memoizedSerializedSize:I

    .line 5011
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0

    .line 5004
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 5013
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 5169
    iput-byte p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->memoizedIsInitialized:B

    .line 5199
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->memoizedSerializedSize:I

    .line 5013
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$5800()Z
    .locals 1

    .line 5004
    sget-boolean v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6002(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 5004
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->multisigKey_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$6102(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 5004
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->tx_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$6202(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;I)I
    .locals 0

    .line 5004
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1

    .line 5017
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5077
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$5300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 5166
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 5167
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->tx_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1

    .line 5278
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->access$5600()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1

    .line 5281
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5258
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5264
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5228
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5234
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5269
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5275
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5248
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5254
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5238
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5244
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 5004
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5004
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1

    .line 5021
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object v0
.end method

.method public getMultisigKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5125
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->multisigKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;",
            ">;"
        }
    .end annotation

    .line 5099
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 5201
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 5205
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 5206
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->multisigKey_:Lcom/google/protobuf/ByteString;

    .line 5207
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5209
    :cond_1
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 5210
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->tx_:Lcom/google/protobuf/ByteString;

    .line 5211
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5213
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 5214
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->memoizedSerializedSize:I

    return v0
.end method

.method public getTx()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 5162
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->tx_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 5028
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasMultisigKey()Z
    .locals 2

    .line 5114
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasTx()Z
    .locals 2

    .line 5145
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 5082
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$5400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    .line 5083
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 5171
    iget-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 5175
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->hasMultisigKey()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5176
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->memoizedIsInitialized:B

    return v2

    .line 5179
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->hasTx()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5180
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->memoizedIsInitialized:B

    return v2

    .line 5183
    :cond_3
    iput-byte v1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5004
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5004
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5004
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1

    .line 5279
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 2

    .line 5288
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5004
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5004
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;
    .locals 1

    .line 5283
    invoke-static {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

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

    .line 5222
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

    .line 5189
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getSerializedSize()I

    .line 5190
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 5191
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->multisigKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5193
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5194
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->tx_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5196
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.class public final Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$ProvideContractOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProvideContract"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    }
.end annotation


# static fields
.field public static final CLIENT_KEY_FIELD_NUMBER:I = 0x3

.field public static final INITIAL_PAYMENT_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideContract;",
            ">;"
        }
    .end annotation
.end field

.field public static final TX_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientKey_:Lcom/google/protobuf/ByteString;

.field private initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private tx_:Lcom/google/protobuf/ByteString;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 6203
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$1;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$1;-><init>()V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    .line 6976
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 6977
    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6136
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 6340
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedIsInitialized:B

    .line 6377
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedSerializedSize:I

    .line 6137
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->initFields()V

    .line 6140
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 6144
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const/16 v4, 0xa

    if-eq v2, v4, :cond_5

    const/16 v4, 0x12

    if-eq v2, v4, :cond_2

    const/16 v4, 0x1a

    if-eq v2, v4, :cond_1

    .line 6150
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 6175
    :cond_1
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

    .line 6176
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->clientKey_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 6163
    iget v3, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    .line 6164
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v2

    .line 6166
    :cond_3
    sget-object v3, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v3, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    iput-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    if-eqz v2, :cond_4

    .line 6168
    invoke-virtual {v2, v3}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    .line 6169
    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 6171
    :cond_4
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

    goto :goto_0

    .line 6157
    :cond_5
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

    .line 6158
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->tx_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_6
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 6184
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 6185
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 6182
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6187
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 6188
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->makeExtensionsImmutable()V

    throw p1

    .line 6187
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 6188
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6107
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 6113
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 6340
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedIsInitialized:B

    .line 6377
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedSerializedSize:I

    .line 6114
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0

    .line 6107
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 6116
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 6340
    iput-byte p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedIsInitialized:B

    .line 6377
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedSerializedSize:I

    .line 6116
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$7700()Z
    .locals 1

    .line 6107
    sget-boolean v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$7902(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 6107
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->tx_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$8002(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 0

    .line 6107
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object p1
.end method

.method static synthetic access$8102(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 6107
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->clientKey_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$8202(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;I)I
    .locals 0

    .line 6107
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1

    .line 6120
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6193
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$7200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 6336
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->tx_:Lcom/google/protobuf/ByteString;

    .line 6337
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 6338
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->clientKey_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    .line 6460
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->access$7500()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    .line 6463
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6440
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6446
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6410
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6416
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6451
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6457
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6430
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6436
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6420
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6426
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object p0
.end method


# virtual methods
.method public getClientKey()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6332
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->clientKey_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 6107
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 6107
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1

    .line 6124
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object v0
.end method

.method public getInitialPayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1

    .line 6290
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public getInitialPaymentOrBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;
    .locals 1

    .line 6303
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/paymentchannel/Protos$ProvideContract;",
            ">;"
        }
    .end annotation

    .line 6215
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 6379
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 6383
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 6384
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->tx_:Lcom/google/protobuf/ByteString;

    .line 6385
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6387
    :cond_1
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 6388
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 6389
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6391
    :cond_2
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 6392
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->clientKey_:Lcom/google/protobuf/ByteString;

    .line 6393
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6395
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 6396
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedSerializedSize:I

    return v0
.end method

.method public getTx()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 6261
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->tx_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 6131
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasClientKey()Z
    .locals 2

    .line 6319
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

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

.method public hasInitialPayment()Z
    .locals 2

    .line 6277
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

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

.method public hasTx()Z
    .locals 2

    .line 6240
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

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

    .line 6198
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$7300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    .line 6199
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 6342
    iget-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 6346
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->hasTx()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6347
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedIsInitialized:B

    return v2

    .line 6350
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->hasInitialPayment()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6351
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedIsInitialized:B

    return v2

    .line 6354
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getInitialPayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 6355
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedIsInitialized:B

    return v2

    .line 6358
    :cond_4
    iput-byte v1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 6107
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 6107
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6107
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    .line 6461
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 2

    .line 6470
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 6107
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 6107
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;
    .locals 1

    .line 6465
    invoke-static {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

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

    .line 6404
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

    .line 6364
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getSerializedSize()I

    .line 6365
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 6366
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->tx_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6368
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 6369
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->initialPayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 6371
    :cond_1
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 6372
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->clientKey_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6374
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

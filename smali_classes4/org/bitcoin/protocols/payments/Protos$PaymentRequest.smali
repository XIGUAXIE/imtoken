.class public final Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/protocols/payments/Protos$PaymentRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaymentRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    }
.end annotation


# static fields
.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYMENT_DETAILS_VERSION_FIELD_NUMBER:I = 0x1

.field public static final PKI_DATA_FIELD_NUMBER:I = 0x3

.field public static final PKI_TYPE_FIELD_NUMBER:I = 0x2

.field public static final SERIALIZED_PAYMENT_DETAILS_FIELD_NUMBER:I = 0x4

.field public static final SIGNATURE_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private paymentDetailsVersion_:I

.field private pkiData_:Lcom/google/protobuf/ByteString;

.field private pkiType_:Ljava/lang/Object;

.field private serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

.field private signature_:Lcom/google/protobuf/ByteString;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 2520
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$1;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$1;-><init>()V

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 3270
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    .line 3271
    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2450
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 2681
    iput-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->memoizedIsInitialized:B

    .line 2716
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->memoizedSerializedSize:I

    .line 2451
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->initFields()V

    .line 2454
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_7

    .line 2458
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    const/16 v4, 0x8

    if-eq v2, v4, :cond_5

    const/16 v5, 0x12

    if-eq v2, v5, :cond_4

    const/16 v5, 0x1a

    if-eq v2, v5, :cond_3

    const/16 v5, 0x22

    if-eq v2, v5, :cond_2

    const/16 v4, 0x2a

    if-eq v2, v4, :cond_1

    .line 2464
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 2492
    :cond_1
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    .line 2493
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->signature_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 2487
    :cond_2
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    or-int/2addr v2, v4

    iput v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    .line 2488
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 2482
    :cond_3
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    .line 2483
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiData_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 2476
    :cond_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 2477
    iget v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    .line 2478
    iput-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiType_:Ljava/lang/Object;

    goto :goto_0

    .line 2471
    :cond_5
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    .line 2472
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    iput v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->paymentDetailsVersion_:I
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

    .line 2501
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 2502
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 2499
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2504
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2505
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->makeExtensionsImmutable()V

    throw p1

    .line 2504
    :cond_7
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 2505
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2421
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 2427
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 2681
    iput-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->memoizedIsInitialized:B

    .line 2716
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->memoizedSerializedSize:I

    .line 2428
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0

    .line 2421
    invoke-direct {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 2430
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 2681
    iput-byte p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->memoizedIsInitialized:B

    .line 2716
    iput p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->memoizedSerializedSize:I

    .line 2430
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$3100()Z
    .locals 1

    .line 2421
    sget-boolean v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3302(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;I)I
    .locals 0

    .line 2421
    iput p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->paymentDetailsVersion_:I

    return p1
.end method

.method static synthetic access$3400(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)Ljava/lang/Object;
    .locals 0

    .line 2421
    iget-object p0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiType_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3402(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2421
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3502(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 2421
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiData_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$3602(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 2421
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$3702(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 2421
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->signature_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$3802(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;I)I
    .locals 0

    .line 2421
    iput p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1

    .line 2434
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2510
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$2600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    const/4 v0, 0x1

    .line 2675
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->paymentDetailsVersion_:I

    const-string v0, "none"

    .line 2676
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiType_:Ljava/lang/Object;

    .line 2677
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiData_:Lcom/google/protobuf/ByteString;

    .line 2678
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    .line 2679
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->signature_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .line 2807
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->access$2900()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .line 2810
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2787
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2793
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2757
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2763
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2798
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2804
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2777
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2783
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2767
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2773
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2421
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2421
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1

    .line 2438
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;",
            ">;"
        }
    .end annotation

    .line 2532
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPaymentDetailsVersion()I
    .locals 1

    .line 2548
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->paymentDetailsVersion_:I

    return v0
.end method

.method public getPkiData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2625
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPkiType()Ljava/lang/String;
    .locals 2

    .line 2571
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiType_:Ljava/lang/Object;

    .line 2572
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2573
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 2575
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 2577
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 2578
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2579
    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiType_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getPkiTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 2593
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiType_:Ljava/lang/Object;

    .line 2594
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2595
    check-cast v0, Ljava/lang/String;

    .line 2596
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2598
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiType_:Ljava/lang/Object;

    return-object v0

    .line 2601
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedPaymentDetails()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2648
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 2718
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2722
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 2723
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->paymentDetailsVersion_:I

    .line 2724
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2726
    :cond_1
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 2728
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getPkiTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2730
    :cond_2
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 2731
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiData_:Lcom/google/protobuf/ByteString;

    .line 2732
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2734
    :cond_3
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 2735
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    .line 2736
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2738
    :cond_4
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 2739
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->signature_:Lcom/google/protobuf/ByteString;

    .line 2740
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2742
    :cond_5
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 2743
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->memoizedSerializedSize:I

    return v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 2671
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 2445
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasPaymentDetailsVersion()Z
    .locals 2

    .line 2542
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasPkiData()Z
    .locals 2

    .line 2615
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

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

.method public hasPkiType()Z
    .locals 2

    .line 2561
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

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

.method public hasSerializedPaymentDetails()Z
    .locals 2

    .line 2638
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSignature()Z
    .locals 2

    .line 2661
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    const/16 v1, 0x10

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

    .line 2515
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$2700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    const-class v2, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    .line 2516
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 2683
    iget-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 2687
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->hasSerializedPaymentDetails()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2688
    iput-byte v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->memoizedIsInitialized:B

    return v2

    .line 2691
    :cond_2
    iput-byte v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2421
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2421
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2421
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .line 2808
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 2

    .line 2817
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/protocols/payments/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2421
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2421
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .line 2812
    invoke-static {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->newBuilder(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

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

    .line 2751
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

    .line 2697
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getSerializedSize()I

    .line 2698
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 2699
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->paymentDetailsVersion_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 2701
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 2702
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getPkiTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2704
    :cond_1
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 2705
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->pkiData_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2707
    :cond_2
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 2708
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2710
    :cond_3
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 2711
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->signature_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2713
    :cond_4
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

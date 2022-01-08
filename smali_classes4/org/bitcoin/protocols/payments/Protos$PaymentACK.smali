.class public final Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/protocols/payments/Protos$PaymentACKOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaymentACK"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    }
.end annotation


# static fields
.field public static final MEMO_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/protocols/payments/Protos$PaymentACK;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYMENT_FIELD_NUMBER:I = 0x1

.field private static final defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memo_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5264
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$1;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$1;-><init>()V

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    .line 5896
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    .line 5897
    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5201
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 5371
    iput-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memoizedIsInitialized:B

    .line 5401
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memoizedSerializedSize:I

    .line 5202
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->initFields()V

    .line 5205
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_6

    .line 5209
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    const/16 v4, 0x12

    if-eq v2, v4, :cond_1

    .line 5215
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 5235
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    .line 5236
    iget v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->bitField0_:I

    .line 5237
    iput-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memo_:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 5223
    iget v4, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->bitField0_:I

    and-int/2addr v4, v3

    if-ne v4, v3, :cond_3

    .line 5224
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-virtual {v2}, Lorg/bitcoin/protocols/payments/Protos$Payment;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v2

    .line 5226
    :cond_3
    sget-object v4, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v4, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v4

    check-cast v4, Lorg/bitcoin/protocols/payments/Protos$Payment;

    iput-object v4, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    if-eqz v2, :cond_4

    .line 5228
    invoke-virtual {v2, v4}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    .line 5229
    invoke-virtual {v2}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    .line 5231
    :cond_4
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->bitField0_:I
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

    .line 5245
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 5246
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 5243
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5248
    :goto_2
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5249
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->makeExtensionsImmutable()V

    throw p1

    .line 5248
    :cond_6
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 5249
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5172
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 5178
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 5371
    iput-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memoizedIsInitialized:B

    .line 5401
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memoizedSerializedSize:I

    .line 5179
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0

    .line 5172
    invoke-direct {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 5181
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 5371
    iput-byte p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memoizedIsInitialized:B

    .line 5401
    iput p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memoizedSerializedSize:I

    .line 5181
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$6500()Z
    .locals 1

    .line 5172
    sget-boolean v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$6702(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 0

    .line 5172
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object p1
.end method

.method static synthetic access$6800(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Ljava/lang/Object;
    .locals 0

    .line 5172
    iget-object p0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memo_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$6802(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 5172
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memo_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$6902(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;I)I
    .locals 0

    .line 5172
    iput p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1

    .line 5185
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 5254
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$6000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 5368
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    const-string v0, ""

    .line 5369
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memo_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1

    .line 5480
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->access$6300()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1

    .line 5483
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5460
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5466
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5430
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5436
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5471
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5477
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5450
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5456
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5440
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5446
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 5172
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 5172
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentACK;
    .locals 1

    .line 5189
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 2

    .line 5333
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memo_:Ljava/lang/Object;

    .line 5334
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5335
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 5337
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 5339
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 5340
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5341
    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memo_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 5355
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memo_:Ljava/lang/Object;

    .line 5356
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5357
    check-cast v0, Ljava/lang/String;

    .line 5358
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5360
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memo_:Ljava/lang/Object;

    return-object v0

    .line 5363
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
            "Lorg/bitcoin/protocols/payments/Protos$PaymentACK;",
            ">;"
        }
    .end annotation

    .line 5276
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPayment()Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1

    .line 5300
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object v0
.end method

.method public getPaymentOrBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentOrBuilder;
    .locals 1

    .line 5310
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 5403
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 5407
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 5408
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    .line 5409
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5411
    :cond_1
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 5413
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getMemoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5415
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 5416
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memoizedSerializedSize:I

    return v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 5196
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasMemo()Z
    .locals 2

    .line 5323
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->bitField0_:I

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

.method public hasPayment()Z
    .locals 2

    .line 5290
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->bitField0_:I

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

    .line 5259
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$6100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;

    const-class v2, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    .line 5260
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 5373
    iget-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 5377
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->hasPayment()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5378
    iput-byte v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memoizedIsInitialized:B

    return v2

    .line 5381
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getPayment()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5382
    iput-byte v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memoizedIsInitialized:B

    return v2

    .line 5385
    :cond_3
    iput-byte v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5172
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 5172
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5172
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1

    .line 5481
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 2

    .line 5490
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/protocols/payments/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 5172
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 5172
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;
    .locals 1

    .line 5485
    invoke-static {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->newBuilder(Lorg/bitcoin/protocols/payments/Protos$PaymentACK;)Lorg/bitcoin/protocols/payments/Protos$PaymentACK$Builder;

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

    .line 5424
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

    .line 5391
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getSerializedSize()I

    .line 5392
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 5393
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->payment_:Lorg/bitcoin/protocols/payments/Protos$Payment;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 5395
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 5396
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getMemoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5398
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentACK;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

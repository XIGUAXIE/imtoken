.class public final Lorg/bitcoin/protocols/payments/Protos$Payment;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/protocols/payments/Protos$PaymentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Payment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    }
.end annotation


# static fields
.field public static final MEMO_FIELD_NUMBER:I = 0x4

.field public static final MERCHANT_DATA_FIELD_NUMBER:I = 0x1

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/protocols/payments/Protos$Payment;",
            ">;"
        }
    .end annotation
.end field

.field public static final REFUND_TO_FIELD_NUMBER:I = 0x3

.field public static final TRANSACTIONS_FIELD_NUMBER:I = 0x2

.field private static final defaultInstance:Lorg/bitcoin/protocols/payments/Protos$Payment;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private memo_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private merchantData_:Lcom/google/protobuf/ByteString;

.field private refundTo_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            ">;"
        }
    .end annotation
.end field

.field private transactions_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4018
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$Payment$1;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$Payment$1;-><init>()V

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    .line 5107
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$Payment;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$Payment;

    .line 5108
    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3941
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 4206
    iput-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memoizedIsInitialized:B

    .line 4240
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memoizedSerializedSize:I

    .line 3942
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->initFields()V

    .line 3945
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x4

    const/4 v4, 0x2

    if-nez v1, :cond_a

    .line 3949
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_7

    const/16 v7, 0xa

    if-eq v5, v7, :cond_6

    const/16 v7, 0x12

    if-eq v5, v7, :cond_4

    const/16 v7, 0x1a

    if-eq v5, v7, :cond_2

    const/16 v7, 0x22

    if-eq v5, v7, :cond_1

    .line 3955
    invoke-virtual {p0, p1, v0, p2, v5}, Lorg/bitcoin/protocols/payments/Protos$Payment;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 3983
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    .line 3984
    iget v6, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->bitField0_:I

    or-int/2addr v6, v4

    iput v6, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->bitField0_:I

    .line 3985
    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memo_:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    and-int/lit8 v5, v2, 0x4

    if-eq v5, v3, :cond_3

    .line 3976
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x4

    .line 3979
    :cond_3
    iget-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    sget-object v6, Lorg/bitcoin/protocols/payments/Protos$Output;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    and-int/lit8 v5, v2, 0x2

    if-eq v5, v4, :cond_5

    .line 3968
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 3971
    :cond_5
    iget-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3962
    :cond_6
    iget v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->bitField0_:I

    .line 3963
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->merchantData_:Lcom/google/protobuf/ByteString;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_7
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3993
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 3994
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 3991
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x2

    if-ne p2, v4, :cond_8

    .line 3997
    iget-object p2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    :cond_8
    and-int/lit8 p2, v2, 0x4

    if-ne p2, v3, :cond_9

    .line 4000
    iget-object p2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    .line 4002
    :cond_9
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 4003
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->makeExtensionsImmutable()V

    throw p1

    :cond_a
    and-int/lit8 p1, v2, 0x2

    if-ne p1, v4, :cond_b

    .line 3997
    iget-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    :cond_b
    and-int/lit8 p1, v2, 0x4

    if-ne p1, v3, :cond_c

    .line 4000
    iget-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    .line 4002
    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 4003
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3912
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$Payment;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 3918
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 4206
    iput-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memoizedIsInitialized:B

    .line 4240
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memoizedSerializedSize:I

    .line 3919
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0

    .line 3912
    invoke-direct {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 3921
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 4206
    iput-byte p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memoizedIsInitialized:B

    .line 4240
    iput p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memoizedSerializedSize:I

    .line 3921
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$5200()Z
    .locals 1

    .line 3912
    sget-boolean v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$5402(Lorg/bitcoin/protocols/payments/Protos$Payment;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 3912
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->merchantData_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$5500(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;
    .locals 0

    .line 3912
    iget-object p0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5502(Lorg/bitcoin/protocols/payments/Protos$Payment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 3912
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5600(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/util/List;
    .locals 0

    .line 3912
    iget-object p0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$5602(Lorg/bitcoin/protocols/payments/Protos$Payment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 3912
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$5700(Lorg/bitcoin/protocols/payments/Protos$Payment;)Ljava/lang/Object;
    .locals 0

    .line 3912
    iget-object p0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memo_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$5702(Lorg/bitcoin/protocols/payments/Protos$Payment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3912
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memo_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$5802(Lorg/bitcoin/protocols/payments/Protos$Payment;I)I
    .locals 0

    .line 3912
    iput p1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->bitField0_:I

    return p1
.end method

.method static synthetic access$5900()Z
    .locals 1

    .line 3912
    sget-boolean v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1

    .line 3925
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 4008
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$4700()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 4201
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 4202
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    .line 4203
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    const-string v0, ""

    .line 4204
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memo_:Ljava/lang/Object;

    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .line 4332
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->access$5000()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .line 4335
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4312
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4318
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4282
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4288
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4323
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4329
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4302
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4308
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4292
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4298
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3912
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3912
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$Payment;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$Payment;
    .locals 1

    .line 3929
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$Payment;

    return-object v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 2

    .line 4166
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memo_:Ljava/lang/Object;

    .line 4167
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4168
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 4170
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 4172
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 4173
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4174
    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memo_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 4188
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memo_:Ljava/lang/Object;

    .line 4189
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4190
    check-cast v0, Ljava/lang/String;

    .line 4191
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 4193
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memo_:Ljava/lang/Object;

    return-object v0

    .line 4196
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMerchantData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4054
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->merchantData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/protocols/payments/Protos$Payment;",
            ">;"
        }
    .end annotation

    .line 4030
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$Payment;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getRefundTo(I)Lorg/bitcoin/protocols/payments/Protos$Output;
    .locals 1

    .line 4132
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$Output;

    return-object p1
.end method

.method public getRefundToCount()I
    .locals 1

    .line 4122
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRefundToList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            ">;"
        }
    .end annotation

    .line 4101
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    return-object v0
.end method

.method public getRefundToOrBuilder(I)Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;
    .locals 1

    .line 4143
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;

    return-object p1
.end method

.method public getRefundToOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4112
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 4242
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 4246
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 4247
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 4248
    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4252
    :goto_1
    iget-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 4253
    iget-object v5, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    .line 4254
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/protobuf/ByteString;

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v4

    .line 4257
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getTransactionsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    .line 4259
    :goto_2
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    const/4 v1, 0x3

    .line 4260
    iget-object v3, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    .line 4261
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 4263
    :cond_3
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x4

    .line 4265
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getMemoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4267
    :cond_4
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 4268
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memoizedSerializedSize:I

    return v0
.end method

.method public getTransactions(I)Lcom/google/protobuf/ByteString;
    .locals 1

    .line 4088
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method public getTransactionsCount()I
    .locals 1

    .line 4078
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTransactionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    .line 4068
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 3936
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasMemo()Z
    .locals 2

    .line 4156
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->bitField0_:I

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

.method public hasMerchantData()Z
    .locals 2

    .line 4044
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->bitField0_:I

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

    .line 4013
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$4800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/protocols/payments/Protos$Payment;

    const-class v2, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    .line 4014
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 4208
    iget-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/4 v0, 0x0

    .line 4212
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getRefundToCount()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 4213
    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getRefundTo(I)Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoin/protocols/payments/Protos$Output;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4214
    iput-byte v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memoizedIsInitialized:B

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4218
    :cond_3
    iput-byte v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3912
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3912
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$Payment;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3912
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .line 4333
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$Payment;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 2

    .line 4342
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/protocols/payments/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3912
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3912
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;
    .locals 1

    .line 4337
    invoke-static {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->newBuilder(Lorg/bitcoin/protocols/payments/Protos$Payment;)Lorg/bitcoin/protocols/payments/Protos$Payment$Builder;

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

    .line 4276
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4224
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getSerializedSize()I

    .line 4225
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 4226
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->merchantData_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4228
    :goto_0
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v1, v2, :cond_1

    .line 4229
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->transactions_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4231
    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    .line 4232
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->refundTo_:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4234
    :cond_2
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$Payment;->bitField0_:I

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    const/4 v0, 0x4

    .line 4235
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getMemoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 4237
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$Payment;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

.class public final Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/protocols/payments/Protos$PaymentDetailsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PaymentDetails"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    }
.end annotation


# static fields
.field public static final EXPIRES_FIELD_NUMBER:I = 0x4

.field public static final MEMO_FIELD_NUMBER:I = 0x5

.field public static final MERCHANT_DATA_FIELD_NUMBER:I = 0x7

.field public static final NETWORK_FIELD_NUMBER:I = 0x1

.field public static final OUTPUTS_FIELD_NUMBER:I = 0x2

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYMENT_URL_FIELD_NUMBER:I = 0x6

.field public static final TIME_FIELD_NUMBER:I = 0x3

.field private static final defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private expires_:J

.field private memo_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private merchantData_:Lcom/google/protobuf/ByteString;

.field private network_:Ljava/lang/Object;

.field private outputs_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            ">;"
        }
    .end annotation
.end field

.field private paymentUrl_:Ljava/lang/Object;

.field private time_:J

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 866
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$1;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$1;-><init>()V

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    .line 2321
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    .line 2322
    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 778
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 1177
    iput-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memoizedIsInitialized:B

    .line 1224
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memoizedSerializedSize:I

    .line 779
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->initFields()V

    .line 782
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    const/4 v3, 0x2

    if-nez v1, :cond_b

    .line 786
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_9

    const/16 v6, 0xa

    if-eq v4, v6, :cond_8

    const/16 v6, 0x12

    if-eq v4, v6, :cond_6

    const/16 v6, 0x18

    if-eq v4, v6, :cond_5

    const/16 v6, 0x20

    if-eq v4, v6, :cond_4

    const/16 v7, 0x2a

    if-eq v4, v7, :cond_3

    const/16 v7, 0x32

    if-eq v4, v7, :cond_2

    const/16 v7, 0x3a

    if-eq v4, v7, :cond_1

    .line 792
    invoke-virtual {p0, p1, v0, p2, v4}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 835
    :cond_1
    iget v4, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    or-int/2addr v4, v6

    iput v4, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    .line 836
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    iput-object v4, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->merchantData_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 829
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 830
    iget v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    .line 831
    iput-object v4, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->paymentUrl_:Ljava/lang/Object;

    goto :goto_0

    .line 823
    :cond_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 824
    iget v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    .line 825
    iput-object v4, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memo_:Ljava/lang/Object;

    goto :goto_0

    .line 818
    :cond_4
    iget v4, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    .line 819
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->expires_:J

    goto :goto_0

    .line 813
    :cond_5
    iget v4, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    or-int/2addr v4, v3

    iput v4, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    .line 814
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->time_:J

    goto :goto_0

    :cond_6
    and-int/lit8 v4, v2, 0x2

    if-eq v4, v3, :cond_7

    .line 806
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    or-int/lit8 v2, v2, 0x2

    .line 809
    :cond_7
    iget-object v4, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    sget-object v5, Lorg/bitcoin/protocols/payments/Protos$Output;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v5, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 799
    :cond_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    .line 800
    iget v6, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    or-int/2addr v5, v6

    iput v5, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    .line 801
    iput-object v4, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->network_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_9
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 844
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 845
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 842
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    and-int/lit8 p2, v2, 0x2

    if-ne p2, v3, :cond_a

    .line 848
    iget-object p2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    .line 850
    :cond_a
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 851
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->makeExtensionsImmutable()V

    throw p1

    :cond_b
    and-int/lit8 p1, v2, 0x2

    if-ne p1, v3, :cond_c

    .line 848
    iget-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    .line 850
    :cond_c
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 851
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->makeExtensionsImmutable()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 749
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 755
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 1177
    iput-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memoizedIsInitialized:B

    .line 1224
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memoizedSerializedSize:I

    .line 756
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0

    .line 749
    invoke-direct {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 758
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 1177
    iput-byte p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memoizedIsInitialized:B

    .line 1224
    iput p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memoizedSerializedSize:I

    .line 758
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1500()Z
    .locals 1

    .line 749
    sget-boolean v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1700(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/lang/Object;
    .locals 0

    .line 749
    iget-object p0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->network_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1702(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 749
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->network_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1800(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/util/List;
    .locals 0

    .line 749
    iget-object p0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1802(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 749
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1902(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;J)J
    .locals 0

    .line 749
    iput-wide p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->time_:J

    return-wide p1
.end method

.method static synthetic access$2002(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;J)J
    .locals 0

    .line 749
    iput-wide p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->expires_:J

    return-wide p1
.end method

.method static synthetic access$2100(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/lang/Object;
    .locals 0

    .line 749
    iget-object p0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memo_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2102(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 749
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memo_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2200(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Ljava/lang/Object;
    .locals 0

    .line 749
    iget-object p0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->paymentUrl_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2202(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 749
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->paymentUrl_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2302(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .locals 0

    .line 749
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->merchantData_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$2402(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;I)I
    .locals 0

    .line 749
    iput p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    return p1
.end method

.method static synthetic access$2500()Z
    .locals 1

    .line 749
    sget-boolean v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method public static getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1

    .line 762
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 856
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$1000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 2

    const-string v0, "main"

    .line 1169
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->network_:Ljava/lang/Object;

    .line 1170
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    const-wide/16 v0, 0x0

    .line 1171
    iput-wide v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->time_:J

    .line 1172
    iput-wide v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->expires_:J

    const-string v0, ""

    .line 1173
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memo_:Ljava/lang/Object;

    .line 1174
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->paymentUrl_:Ljava/lang/Object;

    .line 1175
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->merchantData_:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .line 1323
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->access$1300()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .line 1326
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1303
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1309
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1273
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1279
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1314
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1320
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1293
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1299
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1283
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1289
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 749
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 749
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;
    .locals 1

    .line 766
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->defaultInstance:Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    return-object v0
.end method

.method public getExpires()J
    .locals 2

    .line 1034
    iget-wide v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->expires_:J

    return-wide v0
.end method

.method public getMemo()Ljava/lang/String;
    .locals 2

    .line 1057
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memo_:Ljava/lang/Object;

    .line 1058
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1059
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1061
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1063
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1064
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1065
    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memo_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getMemoBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1079
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memo_:Ljava/lang/Object;

    .line 1080
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1081
    check-cast v0, Ljava/lang/String;

    .line 1082
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1084
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memo_:Ljava/lang/Object;

    return-object v0

    .line 1087
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMerchantData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1165
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->merchantData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getNetwork()Ljava/lang/String;
    .locals 2

    .line 902
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->network_:Ljava/lang/Object;

    .line 903
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 904
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 906
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 908
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 909
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 910
    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->network_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getNetworkBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 924
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->network_:Ljava/lang/Object;

    .line 925
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 926
    check-cast v0, Ljava/lang/String;

    .line 927
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 929
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->network_:Ljava/lang/Object;

    return-object v0

    .line 932
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getOutputs(I)Lorg/bitcoin/protocols/payments/Protos$Output;
    .locals 1

    .line 977
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$Output;

    return-object p1
.end method

.method public getOutputsCount()I
    .locals 1

    .line 967
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOutputsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bitcoin/protocols/payments/Protos$Output;",
            ">;"
        }
    .end annotation

    .line 946
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    return-object v0
.end method

.method public getOutputsOrBuilder(I)Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;
    .locals 1

    .line 988
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;

    return-object p1
.end method

.method public getOutputsOrBuilderList()Ljava/util/List;
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

    .line 957
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;",
            ">;"
        }
    .end annotation

    .line 878
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPaymentUrl()Ljava/lang/String;
    .locals 2

    .line 1111
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->paymentUrl_:Ljava/lang/Object;

    .line 1112
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1113
    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 1115
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 1117
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 1118
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1119
    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->paymentUrl_:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getPaymentUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 1133
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->paymentUrl_:Ljava/lang/Object;

    .line 1134
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1135
    check-cast v0, Ljava/lang/String;

    .line 1136
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 1138
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->paymentUrl_:Ljava/lang/Object;

    return-object v0

    .line 1141
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 1226
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1230
    :cond_0
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 1232
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getNetworkBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1234
    :goto_0
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v2, v1, :cond_2

    .line 1235
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    .line 1236
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1238
    :cond_2
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_3

    const/4 v1, 0x3

    .line 1239
    iget-wide v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->time_:J

    .line 1240
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1242
    :cond_3
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    .line 1243
    iget-wide v3, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->expires_:J

    .line 1244
    invoke-static {v2, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1246
    :cond_4
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 1248
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getMemoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1250
    :cond_5
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 1252
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getPaymentUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1254
    :cond_6
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    .line 1255
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->merchantData_:Lcom/google/protobuf/ByteString;

    .line 1256
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1258
    :cond_7
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1259
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memoizedSerializedSize:I

    return v0
.end method

.method public getTime()J
    .locals 2

    .line 1011
    iget-wide v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->time_:J

    return-wide v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 773
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public hasExpires()Z
    .locals 2

    .line 1024
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

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

.method public hasMemo()Z
    .locals 2

    .line 1047
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

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

.method public hasMerchantData()Z
    .locals 2

    .line 1155
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNetwork()Z
    .locals 2

    .line 892
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasPaymentUrl()Z
    .locals 2

    .line 1101
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

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

.method public hasTime()Z
    .locals 2

    .line 1001
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

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

    .line 861
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$1100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;

    const-class v2, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    .line 862
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 4

    .line 1179
    iget-byte v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 1183
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->hasTime()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1184
    iput-byte v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memoizedIsInitialized:B

    return v2

    :cond_2
    const/4 v0, 0x0

    .line 1187
    :goto_0
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getOutputsCount()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 1188
    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getOutputs(I)Lorg/bitcoin/protocols/payments/Protos$Output;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bitcoin/protocols/payments/Protos$Output;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1189
    iput-byte v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memoizedIsInitialized:B

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1193
    :cond_4
    iput-byte v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 749
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 749
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 749
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .line 1324
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->newBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 2

    .line 1333
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/protocols/payments/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 749
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 749
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->toBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;
    .locals 1

    .line 1328
    invoke-static {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->newBuilder(Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;)Lorg/bitcoin/protocols/payments/Protos$PaymentDetails$Builder;

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

    .line 1267
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

    .line 1199
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getSerializedSize()I

    .line 1200
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 1201
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getNetworkBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_0
    const/4 v0, 0x0

    .line 1203
    :goto_0
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v0, v1, :cond_1

    .line 1204
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->outputs_:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/MessageLite;

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1206
    :cond_1
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    .line 1207
    iget-wide v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->time_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1209
    :cond_2
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    .line 1210
    iget-wide v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->expires_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1212
    :cond_3
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 1213
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getMemoBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1215
    :cond_4
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 1216
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getPaymentUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1218
    :cond_5
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 1219
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->merchantData_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 1221
    :cond_6
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

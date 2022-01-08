.class public final Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/protocols/payments/Protos$PaymentRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;",
        ">;",
        "Lorg/bitcoin/protocols/payments/Protos$PaymentRequestOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private paymentDetailsVersion_:I

.field private pkiData_:Lcom/google/protobuf/ByteString;

.field private pkiType_:Ljava/lang/Object;

.field private serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

.field private signature_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2840
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const/4 v0, 0x1

    .line 2981
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->paymentDetailsVersion_:I

    const-string v0, "none"

    .line 3013
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiType_:Ljava/lang/Object;

    .line 3113
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiData_:Lcom/google/protobuf/ByteString;

    .line 3164
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    .line 3215
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 2841
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 2846
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const/4 p1, 0x1

    .line 2981
    iput p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->paymentDetailsVersion_:I

    const-string p1, "none"

    .line 3013
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiType_:Ljava/lang/Object;

    .line 3113
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiData_:Lcom/google/protobuf/ByteString;

    .line 3164
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    .line 3215
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 2847
    invoke-direct {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/protocols/payments/Protos$1;)V
    .locals 0

    .line 2823
    invoke-direct {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2900()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .line 2823
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->create()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .line 2854
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    invoke-direct {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2829
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$2600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 2850
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->access$3100()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 2823
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2823
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->build()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 2

    .line 2886
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    .line 2887
    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2888
    :cond_0
    invoke-static {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 2823
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2823
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 5

    .line 2894
    new-instance v0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/protocols/payments/Protos$1;)V

    .line 2895
    iget v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2900
    :goto_0
    iget v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->paymentDetailsVersion_:I

    invoke-static {v0, v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->access$3302(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 2904
    :cond_1
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiType_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->access$3402(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 2908
    :cond_2
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiData_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->access$3502(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    and-int/lit8 v2, v1, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 2912
    :cond_3
    iget-object v2, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->access$3602(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    or-int/lit8 v3, v3, 0x10

    .line 2916
    :cond_4
    iget-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->signature_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->access$3702(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 2917
    invoke-static {v0, v3}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->access$3802(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;I)I

    .line 2918
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2823
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 2823
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2823
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2823
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->clear()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 2

    .line 2858
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x1

    .line 2859
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->paymentDetailsVersion_:I

    .line 2860
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    const-string v1, "none"

    .line 2861
    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiType_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x3

    .line 2862
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 2863
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiData_:Lcom/google/protobuf/ByteString;

    .line 2864
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 2865
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    .line 2866
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 2867
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 2868
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearPaymentDetailsVersion()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .line 3007
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    const/4 v0, 0x1

    .line 3008
    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->paymentDetailsVersion_:I

    .line 3009
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPkiData()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .line 3158
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 3159
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getPkiData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiData_:Lcom/google/protobuf/ByteString;

    .line 3160
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPkiType()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .line 3090
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 3091
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getPkiType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiType_:Ljava/lang/Object;

    .line 3092
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSerializedPaymentDetails()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .line 3209
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 3210
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getSerializedPaymentDetails()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    .line 3211
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSignature()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .line 3260
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 3261
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 3262
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 2823
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 2823
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 2823
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 2823
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 2823
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2823
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->clone()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 2

    .line 2873
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->create()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->buildPartial()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 2823
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 2823
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    .locals 1

    .line 2882
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2878
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$2600()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getPaymentDetailsVersion()I
    .locals 1

    .line 2992
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->paymentDetailsVersion_:I

    return v0
.end method

.method public getPkiData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3132
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getPkiType()Ljava/lang/String;
    .locals 2

    .line 3032
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiType_:Ljava/lang/Object;

    .line 3033
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3034
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 3036
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 3037
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3038
    iput-object v1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiType_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 3042
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPkiTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 3054
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiType_:Ljava/lang/Object;

    .line 3055
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3056
    check-cast v0, Ljava/lang/String;

    .line 3057
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 3059
    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiType_:Ljava/lang/Object;

    return-object v0

    .line 3062
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSerializedPaymentDetails()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3183
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3234
    iget-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasPaymentDetailsVersion()Z
    .locals 2

    .line 2986
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

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

    .line 3122
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

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

    .line 3022
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

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

    .line 3173
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

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

    .line 3224
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

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

    .line 2834
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->access$2700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    const-class v2, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    .line 2835
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 2955
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->hasSerializedPaymentDetails()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2823
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2823
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2823
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2823
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 2823
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2823
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2968
    :try_start_0
    sget-object v1, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2974
    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2970
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2971
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 2974
    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .line 2923
    instance-of v0, p1, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    if-eqz v0, :cond_0

    .line 2924
    check-cast p1, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    move-result-object p1

    return-object p1

    .line 2926
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .line 2932
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getDefaultInstance()Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2933
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->hasPaymentDetailsVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2934
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getPaymentDetailsVersion()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->setPaymentDetailsVersion(I)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    .line 2936
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->hasPkiType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2937
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 2938
    invoke-static {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->access$3400(Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiType_:Ljava/lang/Object;

    .line 2939
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onChanged()V

    .line 2941
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->hasPkiData()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2942
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getPkiData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->setPkiData(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    .line 2944
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->hasSerializedPaymentDetails()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2945
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getSerializedPaymentDetails()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->setSerializedPaymentDetails(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    .line 2947
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2948
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;

    .line 2950
    :cond_5
    invoke-virtual {p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setPaymentDetailsVersion(I)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    .line 2998
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 2999
    iput p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->paymentDetailsVersion_:I

    .line 3000
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onChanged()V

    return-object p0
.end method

.method public setPkiData(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3145
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 3146
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiData_:Lcom/google/protobuf/ByteString;

    .line 3147
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3143
    throw p1
.end method

.method public setPkiType(Ljava/lang/String;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3077
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 3078
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiType_:Ljava/lang/Object;

    .line 3079
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3075
    throw p1
.end method

.method public setPkiTypeBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3107
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 3108
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->pkiType_:Ljava/lang/Object;

    .line 3109
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3105
    throw p1
.end method

.method public setSerializedPaymentDetails(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3196
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 3197
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->serializedPaymentDetails_:Lcom/google/protobuf/ByteString;

    .line 3198
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3194
    throw p1
.end method

.method public setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3247
    iget v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->bitField0_:I

    .line 3248
    iput-object p1, p0, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 3249
    invoke-virtual {p0}, Lorg/bitcoin/protocols/payments/Protos$PaymentRequest$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3245
    throw p1
.end method

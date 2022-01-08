.class public final Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;",
        ">;",
        "Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private clientChangeValue_:J

.field private info_:Lcom/google/protobuf/ByteString;

.field private signature_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 7416
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 7593
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 7656
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->info_:Lcom/google/protobuf/ByteString;

    .line 7417
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 7422
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 7593
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 7656
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->info_:Lcom/google/protobuf/ByteString;

    .line 7423
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0

    .line 7399
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$8600()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1

    .line 7399
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1

    .line 7430
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7405
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$8300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 7426
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->access$8800()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 7399
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 7399
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 2

    .line 7458
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    .line 7459
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 7460
    :cond_0
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 7399
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 7399
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 6

    .line 7466
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 7467
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 7472
    :goto_0
    iget-wide v4, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clientChangeValue_:J

    invoke-static {v0, v4, v5}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->access$9002(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;J)J

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 7476
    :cond_1
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->signature_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->access$9102(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 7480
    :cond_2
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->info_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->access$9202(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 7481
    invoke-static {v0, v3}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->access$9302(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;I)I

    .line 7482
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 7399
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 7399
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 7399
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 7399
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 2

    .line 7434
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-wide/16 v0, 0x0

    .line 7435
    iput-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clientChangeValue_:J

    .line 7436
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    .line 7437
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 7438
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    .line 7439
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->info_:Lcom/google/protobuf/ByteString;

    .line 7440
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearClientChangeValue()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 2

    .line 7587
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 7588
    iput-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clientChangeValue_:J

    .line 7589
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->onChanged()V

    return-object p0
.end method

.method public clearInfo()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1

    .line 7701
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    .line 7702
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getInfo()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->info_:Lcom/google/protobuf/ByteString;

    .line 7703
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSignature()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1

    .line 7650
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    .line 7651
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 7652
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 7399
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 7399
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 7399
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 7399
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 7399
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

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

    .line 7399
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 2

    .line 7445
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getClientChangeValue()J
    .locals 2

    .line 7562
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clientChangeValue_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 7399
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 7399
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1

    .line 7454
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 7450
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$8300()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getInfo()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7675
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->info_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getSignature()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 7618
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->signature_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasClientChangeValue()Z
    .locals 2

    .line 7551
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasInfo()Z
    .locals 2

    .line 7665
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

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

.method public hasSignature()Z
    .locals 2

    .line 7605
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

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

    .line 7410
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$8400()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    .line 7411
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 7511
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->hasClientChangeValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 7515
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->hasSignature()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
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

    .line 7399
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 7399
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

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

    .line 7399
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

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

    .line 7399
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 7399
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

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

    .line 7399
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 7528
    :try_start_0
    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 7534
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7530
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7531
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 7534
    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1

    .line 7487
    instance-of v0, p1, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    if-eqz v0, :cond_0

    .line 7488
    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object p1

    return-object p1

    .line 7490
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 2

    .line 7496
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 7497
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->hasClientChangeValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7498
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getClientChangeValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->setClientChangeValue(J)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    .line 7500
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->hasSignature()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7501
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getSignature()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    .line 7503
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->hasInfo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7504
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getInfo()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->setInfo(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    .line 7506
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setClientChangeValue(J)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1

    .line 7573
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    .line 7574
    iput-wide p1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->clientChangeValue_:J

    .line 7575
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->onChanged()V

    return-object p0
.end method

.method public setInfo(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 7688
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    .line 7689
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->info_:Lcom/google/protobuf/ByteString;

    .line 7690
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 7686
    throw p1
.end method

.method public setSignature(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 7634
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->bitField0_:I

    .line 7635
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->signature_:Lcom/google/protobuf/ByteString;

    .line 7636
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 7632
    throw p1
.end method

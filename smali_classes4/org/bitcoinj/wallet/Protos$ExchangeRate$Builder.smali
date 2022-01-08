.class public final Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$ExchangeRateOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$ExchangeRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$ExchangeRateOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private coinValue_:J

.field private fiatCurrencyCode_:Ljava/lang/Object;

.field private fiatValue_:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18576
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    .line 18803
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->fiatCurrencyCode_:Ljava/lang/Object;

    .line 18577
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 18582
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string p1, ""

    .line 18803
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->fiatCurrencyCode_:Ljava/lang/Object;

    .line 18583
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 18559
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$20100()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;
    .locals 1

    .line 18559
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->create()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;
    .locals 1

    .line 18590
    new-instance v0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 18565
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$19800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 18586
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->access$20300()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 18559
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->build()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 18559
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->build()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$ExchangeRate;
    .locals 2

    .line 18618
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object v0

    .line 18619
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 18620
    :cond_0
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 18559
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 18559
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$ExchangeRate;
    .locals 6

    .line 18626
    new-instance v0, Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 18627
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 18632
    :goto_0
    iget-wide v4, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->coinValue_:J

    invoke-static {v0, v4, v5}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->access$20502(Lorg/bitcoinj/wallet/Protos$ExchangeRate;J)J

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 18636
    :cond_1
    iget-wide v4, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->fiatValue_:J

    invoke-static {v0, v4, v5}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->access$20602(Lorg/bitcoinj/wallet/Protos$ExchangeRate;J)J

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 18640
    :cond_2
    iget-object v1, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->fiatCurrencyCode_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->access$20702(Lorg/bitcoinj/wallet/Protos$ExchangeRate;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18641
    invoke-static {v0, v3}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->access$20802(Lorg/bitcoinj/wallet/Protos$ExchangeRate;I)I

    .line 18642
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 18559
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->clear()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 18559
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->clear()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 18559
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->clear()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 18559
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->clear()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;
    .locals 3

    .line 18594
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-wide/16 v0, 0x0

    .line 18595
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->coinValue_:J

    .line 18596
    iget v2, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->bitField0_:I

    .line 18597
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->fiatValue_:J

    and-int/lit8 v0, v2, -0x3

    .line 18598
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->bitField0_:I

    const-string v1, ""

    .line 18599
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->fiatCurrencyCode_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x5

    .line 18600
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearCoinValue()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;
    .locals 2

    .line 18749
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 18750
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->coinValue_:J

    .line 18751
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFiatCurrencyCode()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;
    .locals 1

    .line 18880
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->bitField0_:I

    .line 18881
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->getFiatCurrencyCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->fiatCurrencyCode_:Ljava/lang/Object;

    .line 18882
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFiatValue()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;
    .locals 2

    .line 18797
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 18798
    iput-wide v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->fiatValue_:J

    .line 18799
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 18559
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->clone()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 18559
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->clone()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 18559
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->clone()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 18559
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->clone()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 18559
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->clone()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

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

    .line 18559
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->clone()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;
    .locals 2

    .line 18605
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->create()Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$ExchangeRate;)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCoinValue()J
    .locals 2

    .line 18726
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->coinValue_:J

    return-wide v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 18559
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 18559
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$ExchangeRate;
    .locals 1

    .line 18614
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 18610
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$19800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getFiatCurrencyCode()Ljava/lang/String;
    .locals 2

    .line 18822
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->fiatCurrencyCode_:Ljava/lang/Object;

    .line 18823
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 18824
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 18826
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 18827
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18828
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->fiatCurrencyCode_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 18832
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFiatCurrencyCodeBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 18844
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->fiatCurrencyCode_:Ljava/lang/Object;

    .line 18845
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18846
    check-cast v0, Ljava/lang/String;

    .line 18847
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 18849
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->fiatCurrencyCode_:Ljava/lang/Object;

    return-object v0

    .line 18852
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getFiatValue()J
    .locals 2

    .line 18774
    iget-wide v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->fiatValue_:J

    return-wide v0
.end method

.method public hasCoinValue()Z
    .locals 2

    .line 18716
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasFiatCurrencyCode()Z
    .locals 2

    .line 18812
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->bitField0_:I

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

.method public hasFiatValue()Z
    .locals 2

    .line 18764
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->bitField0_:I

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

    .line 18570
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$19900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    const-class v2, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    .line 18571
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 18673
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->hasCoinValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 18677
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->hasFiatValue()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 18681
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->hasFiatCurrencyCode()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
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

    .line 18559
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 18559
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

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

    .line 18559
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

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

    .line 18559
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 18559
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

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

    .line 18559
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 18694
    :try_start_0
    sget-object v1, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$ExchangeRate;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 18700
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$ExchangeRate;)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18696
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/wallet/Protos$ExchangeRate;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18697
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 18700
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$ExchangeRate;)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;
    .locals 1

    .line 18647
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    if-eqz v0, :cond_0

    .line 18648
    check-cast p1, Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$ExchangeRate;)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    move-result-object p1

    return-object p1

    .line 18650
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$ExchangeRate;)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;
    .locals 2

    .line 18656
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$ExchangeRate;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 18657
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->hasCoinValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18658
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->getCoinValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->setCoinValue(J)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    .line 18660
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->hasFiatValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18661
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->getFiatValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->setFiatValue(J)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;

    .line 18663
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->hasFiatCurrencyCode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18664
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->bitField0_:I

    .line 18665
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->access$20700(Lorg/bitcoinj/wallet/Protos$ExchangeRate;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->fiatCurrencyCode_:Ljava/lang/Object;

    .line 18666
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->onChanged()V

    .line 18668
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setCoinValue(J)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;
    .locals 1

    .line 18736
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->bitField0_:I

    .line 18737
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->coinValue_:J

    .line 18738
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->onChanged()V

    return-object p0
.end method

.method public setFiatCurrencyCode(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 18867
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->bitField0_:I

    .line 18868
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->fiatCurrencyCode_:Ljava/lang/Object;

    .line 18869
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 18865
    throw p1
.end method

.method public setFiatCurrencyCodeBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 18897
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->bitField0_:I

    .line 18898
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->fiatCurrencyCode_:Ljava/lang/Object;

    .line 18899
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 18895
    throw p1
.end method

.method public setFiatValue(J)Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;
    .locals 1

    .line 18784
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->bitField0_:I

    .line 18785
    iput-wide p1, p0, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->fiatValue_:J

    .line 18786
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$ExchangeRate$Builder;->onChanged()V

    return-object p0
.end method

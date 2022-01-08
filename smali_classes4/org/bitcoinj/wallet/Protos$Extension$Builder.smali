.class public final Lorg/bitcoinj/wallet/Protos$Extension$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoinj/wallet/Protos$Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoinj/wallet/Protos$Extension$Builder;",
        ">;",
        "Lorg/bitcoinj/wallet/Protos$ExtensionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private data_:Lcom/google/protobuf/ByteString;

.field private id_:Ljava/lang/Object;

.field private mandatory_:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 12527
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    const-string v0, ""

    .line 12658
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->id_:Ljava/lang/Object;

    .line 12758
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 12528
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 12533
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    const-string p1, ""

    .line 12658
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->id_:Ljava/lang/Object;

    .line 12758
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 12534
    invoke-direct {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoinj/wallet/Protos$1;)V
    .locals 0

    .line 12510
    invoke-direct {p0, p1}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$14100()Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    .line 12510
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->create()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    .line 12541
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    invoke-direct {v0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 12516
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$13800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 12537
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension;->access$14300()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 12510
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->build()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 12510
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->build()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 2

    .line 12569
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    .line 12570
    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Extension;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 12571
    :cond_0
    invoke-static {v0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 12510
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 12510
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 5

    .line 12577
    new-instance v0, Lorg/bitcoinj/wallet/Protos$Extension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoinj/wallet/Protos$Extension;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoinj/wallet/Protos$1;)V

    .line 12578
    iget v1, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 12583
    :goto_0
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->id_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Extension;->access$14502(Lorg/bitcoinj/wallet/Protos$Extension;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 12587
    :cond_1
    iget-object v2, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->data_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoinj/wallet/Protos$Extension;->access$14602(Lorg/bitcoinj/wallet/Protos$Extension;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 12591
    :cond_2
    iget-boolean v1, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mandatory_:Z

    invoke-static {v0, v1}, Lorg/bitcoinj/wallet/Protos$Extension;->access$14702(Lorg/bitcoinj/wallet/Protos$Extension;Z)Z

    .line 12592
    invoke-static {v0, v3}, Lorg/bitcoinj/wallet/Protos$Extension;->access$14802(Lorg/bitcoinj/wallet/Protos$Extension;I)I

    .line 12593
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 12510
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 12510
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 12510
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 12510
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->clear()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 2

    .line 12545
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const-string v0, ""

    .line 12546
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->id_:Ljava/lang/Object;

    .line 12547
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    .line 12548
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 12549
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    const/4 v1, 0x0

    .line 12550
    iput-boolean v1, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mandatory_:Z

    and-int/lit8 v0, v0, -0x5

    .line 12551
    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearData()Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    .line 12787
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    .line 12788
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Extension;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 12789
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->onChanged()V

    return-object p0
.end method

.method public clearId()Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    .line 12735
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    .line 12736
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoinj/wallet/Protos$Extension;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->id_:Ljava/lang/Object;

    .line 12737
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMandatory()Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    .line 12843
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 12844
    iput-boolean v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mandatory_:Z

    .line 12845
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 12510
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 12510
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 12510
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 12510
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 12510
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

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

    .line 12510
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->clone()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 2

    .line 12556
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->create()Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->buildPartial()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Extension;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 12769
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->data_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 12510
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 12510
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoinj/wallet/Protos$Extension;
    .locals 1

    .line 12565
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 12561
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$13800()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 12677
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->id_:Ljava/lang/Object;

    .line 12678
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 12679
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 12681
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 12682
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12683
    iput-object v1, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->id_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 12687
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 12699
    iget-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->id_:Ljava/lang/Object;

    .line 12700
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 12701
    check-cast v0, Ljava/lang/String;

    .line 12702
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 12704
    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->id_:Ljava/lang/Object;

    return-object v0

    .line 12707
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getMandatory()Z
    .locals 1

    .line 12816
    iget-boolean v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mandatory_:Z

    return v0
.end method

.method public hasData()Z
    .locals 2

    .line 12763
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

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

.method public hasId()Z
    .locals 2

    .line 12667
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMandatory()Z
    .locals 2

    .line 12804
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 12521
    invoke-static {}, Lorg/bitcoinj/wallet/Protos;->access$13900()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoinj/wallet/Protos$Extension;

    const-class v2, Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    .line 12522
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 12624
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->hasId()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 12628
    :cond_0
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->hasData()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 12632
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->hasMandatory()Z

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

    .line 12510
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 12510
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

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

    .line 12510
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

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

    .line 12510
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 12510
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

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

    .line 12510
    invoke-virtual {p0, p1, p2}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 12645
    :try_start_0
    sget-object v1, Lorg/bitcoinj/wallet/Protos$Extension;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoinj/wallet/Protos$Extension;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 12651
    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Extension;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 12647
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoinj/wallet/Protos$Extension;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12648
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 12651
    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Extension;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    .line 12598
    instance-of v0, p1, Lorg/bitcoinj/wallet/Protos$Extension;

    if-eqz v0, :cond_0

    .line 12599
    check-cast p1, Lorg/bitcoinj/wallet/Protos$Extension;

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mergeFrom(Lorg/bitcoinj/wallet/Protos$Extension;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    move-result-object p1

    return-object p1

    .line 12601
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoinj/wallet/Protos$Extension;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    .line 12607
    invoke-static {}, Lorg/bitcoinj/wallet/Protos$Extension;->getDefaultInstance()Lorg/bitcoinj/wallet/Protos$Extension;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 12608
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Extension;->hasId()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12609
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    .line 12610
    invoke-static {p1}, Lorg/bitcoinj/wallet/Protos$Extension;->access$14500(Lorg/bitcoinj/wallet/Protos$Extension;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->id_:Ljava/lang/Object;

    .line 12611
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->onChanged()V

    .line 12613
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Extension;->hasData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 12614
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Extension;->getData()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->setData(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    .line 12616
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Extension;->hasMandatory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12617
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Extension;->getMandatory()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->setMandatory(Z)Lorg/bitcoinj/wallet/Protos$Extension$Builder;

    .line 12619
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoinj/wallet/Protos$Extension;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setData(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 12778
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    .line 12779
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->data_:Lcom/google/protobuf/ByteString;

    .line 12780
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 12776
    throw p1
.end method

.method public setId(Ljava/lang/String;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 12722
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    .line 12723
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->id_:Ljava/lang/Object;

    .line 12724
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 12720
    throw p1
.end method

.method public setIdBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 12752
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    .line 12753
    iput-object p1, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->id_:Ljava/lang/Object;

    .line 12754
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 12750
    throw p1
.end method

.method public setMandatory(Z)Lorg/bitcoinj/wallet/Protos$Extension$Builder;
    .locals 1

    .line 12828
    iget v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->bitField0_:I

    .line 12829
    iput-boolean p1, p0, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->mandatory_:Z

    .line 12830
    invoke-virtual {p0}, Lorg/bitcoinj/wallet/Protos$Extension$Builder;->onChanged()V

    return-object p0
.end method

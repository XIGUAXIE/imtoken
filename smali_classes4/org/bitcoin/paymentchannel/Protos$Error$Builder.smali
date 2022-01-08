.class public final Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$ErrorOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoin/paymentchannel/Protos$Error$Builder;",
        ">;",
        "Lorg/bitcoin/paymentchannel/Protos$ErrorOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

.field private expectedValue_:J

.field private explanation_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9220
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 9339
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->OTHER:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    const-string v0, ""

    .line 9374
    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->explanation_:Ljava/lang/Object;

    .line 9221
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 0

    .line 9226
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 9339
    sget-object p1, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->OTHER:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    const-string p1, ""

    .line 9374
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->explanation_:Ljava/lang/Object;

    .line 9227
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0

    .line 9203
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$11500()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1

    .line 9203
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1

    .line 9234
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 9209
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$11200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 9230
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->access$11700()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 9203
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 9203
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 2

    .line 9262
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    .line 9263
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$Error;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 9264
    :cond_0
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 9203
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 9203
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 5

    .line 9270
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$Error;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoin/paymentchannel/Protos$Error;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 9271
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 9276
    :goto_0
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$Error;->access$11902(Lorg/bitcoin/paymentchannel/Protos$Error;Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 9280
    :cond_1
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->explanation_:Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$Error;->access$12002(Lorg/bitcoin/paymentchannel/Protos$Error;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 9284
    :cond_2
    iget-wide v1, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->expectedValue_:J

    invoke-static {v0, v1, v2}, Lorg/bitcoin/paymentchannel/Protos$Error;->access$12102(Lorg/bitcoin/paymentchannel/Protos$Error;J)J

    .line 9285
    invoke-static {v0, v3}, Lorg/bitcoin/paymentchannel/Protos$Error;->access$12202(Lorg/bitcoin/paymentchannel/Protos$Error;I)I

    .line 9286
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 9203
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 9203
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 9203
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 9203
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 3

    .line 9238
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    .line 9239
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->OTHER:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 9240
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    const-string v1, ""

    .line 9241
    iput-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->explanation_:Ljava/lang/Object;

    and-int/lit8 v0, v0, -0x3

    .line 9242
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    const-wide/16 v1, 0x0

    .line 9243
    iput-wide v1, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->expectedValue_:J

    and-int/lit8 v0, v0, -0x5

    .line 9244
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearCode()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1

    .line 9368
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    .line 9369
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;->OTHER:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 9370
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExpectedValue()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 2

    .line 9516
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 9517
    iput-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->expectedValue_:J

    .line 9518
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->onChanged()V

    return-object p0
.end method

.method public clearExplanation()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1

    .line 9451
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    .line 9452
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$Error;->getExplanation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->explanation_:Ljava/lang/Object;

    .line 9453
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 9203
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 9203
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 9203
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 9203
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 9203
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

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

    .line 9203
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 2

    .line 9249
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getCode()Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;
    .locals 1

    .line 9350
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 9203
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 9203
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1

    .line 9258
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 9254
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$11200()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getExpectedValue()J
    .locals 2

    .line 9493
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->expectedValue_:J

    return-wide v0
.end method

.method public getExplanation()Ljava/lang/String;
    .locals 2

    .line 9393
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->explanation_:Ljava/lang/Object;

    .line 9394
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 9395
    check-cast v0, Lcom/google/protobuf/ByteString;

    .line 9397
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    .line 9398
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9399
    iput-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->explanation_:Ljava/lang/Object;

    :cond_0
    return-object v1

    .line 9403
    :cond_1
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getExplanationBytes()Lcom/google/protobuf/ByteString;
    .locals 2

    .line 9415
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->explanation_:Ljava/lang/Object;

    .line 9416
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 9417
    check-cast v0, Ljava/lang/String;

    .line 9418
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 9420
    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->explanation_:Ljava/lang/Object;

    return-object v0

    .line 9423
    :cond_0
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public hasCode()Z
    .locals 2

    .line 9344
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasExpectedValue()Z
    .locals 2

    .line 9483
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

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

.method public hasExplanation()Z
    .locals 2

    .line 9383
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

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

    .line 9214
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$11300()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$Error;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    .line 9215
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

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

    .line 9203
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 9203
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

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

    .line 9203
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

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

    .line 9203
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 9203
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

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

    .line 9203
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 9326
    :try_start_0
    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$Error;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 9332
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9328
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoin/paymentchannel/Protos$Error;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9329
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 9332
    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1

    .line 9291
    instance-of v0, p1, Lorg/bitcoin/paymentchannel/Protos$Error;

    if-eqz v0, :cond_0

    .line 9292
    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$Error;

    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object p1

    return-object p1

    .line 9294
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 2

    .line 9300
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 9301
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Error;->hasCode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9302
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Error;->getCode()Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setCode(Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    .line 9304
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Error;->hasExplanation()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9305
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    .line 9306
    invoke-static {p1}, Lorg/bitcoin/paymentchannel/Protos$Error;->access$12000(Lorg/bitcoin/paymentchannel/Protos$Error;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->explanation_:Ljava/lang/Object;

    .line 9307
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->onChanged()V

    .line 9309
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Error;->hasExpectedValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9310
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Error;->getExpectedValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->setExpectedValue(J)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    .line 9312
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$Error;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setCode(Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 9359
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    .line 9360
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->code_:Lorg/bitcoin/paymentchannel/Protos$Error$ErrorCode;

    .line 9361
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 9357
    throw p1
.end method

.method public setExpectedValue(J)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1

    .line 9503
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    .line 9504
    iput-wide p1, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->expectedValue_:J

    .line 9505
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->onChanged()V

    return-object p0
.end method

.method public setExplanation(Ljava/lang/String;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 9438
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    .line 9439
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->explanation_:Ljava/lang/Object;

    .line 9440
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 9436
    throw p1
.end method

.method public setExplanationBytes(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 9468
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->bitField0_:I

    .line 9469
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->explanation_:Ljava/lang/Object;

    .line 9470
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 9466
    throw p1
.end method

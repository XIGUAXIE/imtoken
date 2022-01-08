.class public final Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
.super Lcom/google/protobuf/GeneratedMessage$Builder;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$ClientVersionOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessage$Builder<",
        "Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;",
        ">;",
        "Lorg/bitcoin/paymentchannel/Protos$ClientVersionOrBuilder;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private major_:I

.field private minor_:I

.field private previousChannelContractHash_:Lcom/google/protobuf/ByteString;

.field private timeWindowSecs_:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3190
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>()V

    .line 3384
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    const-wide/32 v0, 0x15144

    .line 3447
    iput-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->timeWindowSecs_:J

    .line 3191
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V
    .locals 2

    .line 3196
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    .line 3384
    sget-object p1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    const-wide/32 v0, 0x15144

    .line 3447
    iput-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->timeWindowSecs_:J

    .line 3197
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0

    .line 3173
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)V

    return-void
.end method

.method static synthetic access$2200()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1

    .line 3173
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1

    .line 3204
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;-><init>()V

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3179
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$1900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 3200
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->access$2400()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/google/protobuf/Message;
    .locals 1

    .line 3173
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3173
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->build()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 2

    .line 3234
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    .line 3235
    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3236
    :cond_0
    invoke-static {v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->newUninitializedMessageException(Lcom/google/protobuf/Message;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/Message;
    .locals 1

    .line 3173
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3173
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 5

    .line 3242
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V

    .line 3243
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3248
    :goto_0
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->major_:I

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->access$2602(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;I)I

    and-int/lit8 v2, v1, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    or-int/lit8 v3, v3, 0x2

    .line 3252
    :cond_1
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->minor_:I

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->access$2702(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;I)I

    and-int/lit8 v2, v1, 0x4

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    or-int/lit8 v3, v3, 0x4

    .line 3256
    :cond_2
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v2}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->access$2802(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    or-int/lit8 v3, v3, 0x8

    .line 3260
    :cond_3
    iget-wide v1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->timeWindowSecs_:J

    invoke-static {v0, v1, v2}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->access$2902(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;J)J

    .line 3261
    invoke-static {v0, v3}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->access$3002(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;I)I

    .line 3262
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3173
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 3173
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3173
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3173
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->clear()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 3

    .line 3208
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage$Builder;->clear()Lcom/google/protobuf/GeneratedMessage$Builder;

    const/4 v0, 0x0

    .line 3209
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->major_:I

    .line 3210
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    .line 3211
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->minor_:I

    and-int/lit8 v0, v1, -0x3

    .line 3212
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    .line 3213
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    .line 3214
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    const-wide/32 v1, 0x15144

    .line 3215
    iput-wide v1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->timeWindowSecs_:J

    and-int/lit8 v0, v0, -0x9

    .line 3216
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    return-object p0
.end method

.method public clearMajor()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1

    .line 3346
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 3347
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->major_:I

    .line 3348
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMinor()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1

    .line 3378
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 3379
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->minor_:I

    .line 3380
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPreviousChannelContractHash()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1

    .line 3441
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    .line 3442
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getPreviousChannelContractHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    .line 3443
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->onChanged()V

    return-object p0
.end method

.method public clearTimeWindowSecs()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 2

    .line 3493
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    const-wide/32 v0, 0x15144

    .line 3494
    iput-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->timeWindowSecs_:J

    .line 3495
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3173
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3173
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessage$Builder;
    .locals 1

    .line 3173
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 3173
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 3173
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

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

    .line 3173
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->clone()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 2

    .line 3221
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->create()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 3173
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 3173
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1

    .line 3230
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3226
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$1900()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method public getMajor()I
    .locals 1

    .line 3331
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->major_:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .line 3363
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->minor_:I

    return v0
.end method

.method public getPreviousChannelContractHash()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 3409
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTimeWindowSecs()J
    .locals 2

    .line 3468
    iget-wide v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->timeWindowSecs_:J

    return-wide v0
.end method

.method public hasMajor()Z
    .locals 2

    .line 3325
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasMinor()Z
    .locals 2

    .line 3357
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

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

.method public hasPreviousChannelContractHash()Z
    .locals 2

    .line 3396
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

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

.method public hasTimeWindowSecs()Z
    .locals 2

    .line 3457
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

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

.method protected internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 3

    .line 3184
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$2000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    .line 3185
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 3294
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->hasMajor()Z

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

    .line 3173
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3173
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

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

    .line 3173
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

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

    .line 3173
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 3173
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

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

    .line 3173
    invoke-virtual {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3307
    :try_start_0
    sget-object v1, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v1, p1, p2}, Lcom/google/protobuf/Parser;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3313
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3309
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/google/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3310
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 3313
    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/google/protobuf/Message;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1

    .line 3267
    instance-of v0, p1, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    if-eqz v0, :cond_0

    .line 3268
    check-cast p1, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object p1

    return-object p1

    .line 3270
    :cond_0
    invoke-super {p0, p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->mergeFrom(Lcom/google/protobuf/Message;)Lcom/google/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 2

    .line 3276
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3277
    :cond_0
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->hasMajor()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3278
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getMajor()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->setMajor(I)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    .line 3280
    :cond_1
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->hasMinor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3281
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getMinor()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->setMinor(I)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    .line 3283
    :cond_2
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->hasPreviousChannelContractHash()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3284
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getPreviousChannelContractHash()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->setPreviousChannelContractHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    .line 3286
    :cond_3
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->hasTimeWindowSecs()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3287
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getTimeWindowSecs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->setTimeWindowSecs(J)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    .line 3289
    :cond_4
    invoke-virtual {p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSet;)Lcom/google/protobuf/GeneratedMessage$Builder;

    return-object p0
.end method

.method public setMajor(I)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1

    .line 3337
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    .line 3338
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->major_:I

    .line 3339
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->onChanged()V

    return-object p0
.end method

.method public setMinor(I)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1

    .line 3369
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    .line 3370
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->minor_:I

    .line 3371
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->onChanged()V

    return-object p0
.end method

.method public setPreviousChannelContractHash(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1

    if-eqz p1, :cond_0

    .line 3425
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    .line 3426
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->previousChannelContractHash_:Lcom/google/protobuf/ByteString;

    .line 3427
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->onChanged()V

    return-object p0

    :cond_0
    const/4 p1, 0x0

    .line 3423
    throw p1
.end method

.method public setTimeWindowSecs(J)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;
    .locals 1

    .line 3479
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->bitField0_:I

    .line 3480
    iput-wide p1, p0, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->timeWindowSecs_:J

    .line 3481
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->onChanged()V

    return-object p0
.end method

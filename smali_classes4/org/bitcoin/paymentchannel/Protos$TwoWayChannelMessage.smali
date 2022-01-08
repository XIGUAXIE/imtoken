.class public final Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
.super Lcom/google/protobuf/GeneratedMessage;
.source "Protos.java"

# interfaces
.implements Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitcoin/paymentchannel/Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TwoWayChannelMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;,
        Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;
    }
.end annotation


# static fields
.field public static final CLIENT_VERSION_FIELD_NUMBER:I = 0x2

.field public static final ERROR_FIELD_NUMBER:I = 0xa

.field public static final INITIATE_FIELD_NUMBER:I = 0x4

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAYMENT_ACK_FIELD_NUMBER:I = 0xb

.field public static final PROVIDE_CONTRACT_FIELD_NUMBER:I = 0x7

.field public static final PROVIDE_REFUND_FIELD_NUMBER:I = 0x5

.field public static final RETURN_REFUND_FIELD_NUMBER:I = 0x6

.field public static final SERVER_VERSION_FIELD_NUMBER:I = 0x3

.field public static final SETTLEMENT_FIELD_NUMBER:I = 0x9

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final UPDATE_PAYMENT_FIELD_NUMBER:I = 0x8

.field private static final defaultInstance:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

.field private static final serialVersionUID:J


# instance fields
.field private bitField0_:I

.field private clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

.field private error_:Lorg/bitcoin/paymentchannel/Protos$Error;

.field private initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

.field private provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

.field private provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

.field private returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

.field private serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

.field private settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

.field private type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 401
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$1;

    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$1;-><init>()V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    .line 2755
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;-><init>(Z)V

    sput-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    .line 2756
    invoke-direct {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 216
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    .line 910
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    .line 1011
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedSerializedSize:I

    .line 217
    invoke-direct {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->initFields()V

    .line 220
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_16

    .line 224
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    .line 230
    invoke-virtual {p0, p1, v0, p2, v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    goto/16 :goto_2

    .line 366
    :sswitch_0
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v3, 0x100

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    .line 367
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    move-result-object v4

    .line 369
    :cond_1
    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    if-eqz v4, :cond_2

    .line 371
    invoke-virtual {v4, v2}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$PaymentAck;)Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;

    .line 372
    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    .line 374
    :cond_2
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    goto :goto_0

    .line 353
    :sswitch_1
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v3, 0x400

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3

    .line 354
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$Error;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    move-result-object v4

    .line 356
    :cond_3
    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$Error;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/paymentchannel/Protos$Error;

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    if-eqz v4, :cond_4

    .line 358
    invoke-virtual {v4, v2}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error$Builder;

    .line 359
    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$Error$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 361
    :cond_4
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    goto :goto_0

    .line 340
    :sswitch_2
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v3, 0x200

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_5

    .line 341
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    move-result-object v4

    .line 343
    :cond_5
    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$Settlement;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/paymentchannel/Protos$Settlement;

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    if-eqz v4, :cond_6

    .line 345
    invoke-virtual {v4, v2}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;

    .line 346
    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$Settlement$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 348
    :cond_6
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    goto/16 :goto_0

    .line 327
    :sswitch_3
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v3, 0x80

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_7

    .line 328
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    move-result-object v4

    .line 330
    :cond_7
    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    if-eqz v4, :cond_8

    .line 332
    invoke-virtual {v4, v2}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;

    .line 333
    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 335
    :cond_8
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    goto/16 :goto_0

    .line 314
    :sswitch_4
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v3, 0x40

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_9

    .line 315
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    move-result-object v4

    .line 317
    :cond_9
    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    if-eqz v4, :cond_a

    .line 319
    invoke-virtual {v4, v2}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;

    .line 320
    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 322
    :cond_a
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    goto/16 :goto_0

    .line 301
    :sswitch_5
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v3, 0x20

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_b

    .line 302
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    move-result-object v4

    .line 304
    :cond_b
    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    if-eqz v4, :cond_c

    .line 306
    invoke-virtual {v4, v2}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;

    .line 307
    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 309
    :cond_c
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    goto/16 :goto_0

    .line 288
    :sswitch_6
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v3, 0x10

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_d

    .line 289
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    move-result-object v4

    .line 291
    :cond_d
    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    if-eqz v4, :cond_e

    .line 293
    invoke-virtual {v4, v2}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;

    .line 294
    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 296
    :cond_e
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    goto/16 :goto_0

    .line 275
    :sswitch_7
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_f

    .line 276
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    move-result-object v4

    .line 278
    :cond_f
    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$Initiate;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/paymentchannel/Protos$Initiate;

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    if-eqz v4, :cond_10

    .line 280
    invoke-virtual {v4, v2}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;

    .line 281
    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$Initiate$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 283
    :cond_10
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    goto/16 :goto_0

    .line 262
    :sswitch_8
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_11

    .line 263
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    move-result-object v4

    .line 265
    :cond_11
    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    if-eqz v4, :cond_12

    .line 267
    invoke-virtual {v4, v2}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;

    .line 268
    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 270
    :cond_12
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    goto/16 :goto_0

    .line 249
    :sswitch_9
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_13

    .line 250
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    invoke-virtual {v2}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    move-result-object v4

    .line 252
    :cond_13
    sget-object v2, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v2, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    if-eqz v4, :cond_14

    .line 254
    invoke-virtual {v4, v2}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;

    .line 255
    invoke-virtual {v4}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion$Builder;->buildPartial()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v2

    iput-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 257
    :cond_14
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    goto/16 :goto_0

    .line 237
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    .line 238
    invoke-static {v2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->valueOf(I)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    move-result-object v4

    if-nez v4, :cond_15

    .line 240
    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_0

    .line 242
    :cond_15
    iget v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    or-int/2addr v2, v3

    iput v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    .line 243
    iput-object v4, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :goto_1
    :sswitch_b
    const/4 v1, 0x1

    goto/16 :goto_0

    :goto_2
    if-nez v2, :cond_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 382
    :try_start_1
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    .line 383
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 380
    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    :goto_3
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 386
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->makeExtensionsImmutable()V

    throw p1

    .line 385
    :cond_16
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    .line 386
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_b
        0x8 -> :sswitch_a
        0x12 -> :sswitch_9
        0x1a -> :sswitch_8
        0x22 -> :sswitch_7
        0x2a -> :sswitch_6
        0x32 -> :sswitch_5
        0x3a -> :sswitch_4
        0x42 -> :sswitch_3
        0x4a -> :sswitch_2
        0x52 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 187
    invoke-direct {p0, p1, p2}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    .line 193
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    .line 910
    iput-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    .line 1011
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedSerializedSize:I

    .line 194
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lorg/bitcoin/paymentchannel/Protos$1;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 196
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    .line 910
    iput-byte p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    .line 1011
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedSerializedSize:I

    .line 196
    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1002(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$Initiate;)Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object p1
.end method

.method static synthetic access$1102(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;)Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object p1
.end method

.method static synthetic access$1202(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;)Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    return-object p1
.end method

.method static synthetic access$1302(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ProvideContract;)Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object p1
.end method

.method static synthetic access$1402(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;)Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object p1
.end method

.method static synthetic access$1502(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$PaymentAck;)Lorg/bitcoin/paymentchannel/Protos$PaymentAck;
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    return-object p1
.end method

.method static synthetic access$1602(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$Settlement;)Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object p1
.end method

.method static synthetic access$1702(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$Error;)Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object p1
.end method

.method static synthetic access$1802(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;I)I
    .locals 0

    .line 187
    iput p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .line 187
    sget-boolean v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$702(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    return-object p1
.end method

.method static synthetic access$802(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ClientVersion;)Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object p1
.end method

.method static synthetic access$902(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;Lorg/bitcoin/paymentchannel/Protos$ServerVersion;)Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object p1
.end method

.method public static getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1

    .line 200
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 391
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$000()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .line 898
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->CLIENT_VERSION:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 899
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 900
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 901
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 902
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 903
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 904
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 905
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 906
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$PaymentAck;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    .line 907
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 908
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$Error;->getDefaultInstance()Lorg/bitcoin/paymentchannel/Protos$Error;

    move-result-object v0

    iput-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    return-void
.end method

.method public static newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 1126
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->access$300()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 1129
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;->mergeFrom(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1106
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1112
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1076
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1082
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1117
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1123
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1096
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1102
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1086
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1092
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    return-object p0
.end method


# virtual methods
.method public getClientVersion()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;
    .locals 1

    .line 695
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object v0
.end method

.method public getClientVersionOrBuilder()Lorg/bitcoin/paymentchannel/Protos$ClientVersionOrBuilder;
    .locals 1

    .line 705
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;
    .locals 1

    .line 204
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->defaultInstance:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    return-object v0
.end method

.method public getError()Lorg/bitcoin/paymentchannel/Protos$Error;
    .locals 1

    .line 888
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object v0
.end method

.method public getErrorOrBuilder()Lorg/bitcoin/paymentchannel/Protos$ErrorOrBuilder;
    .locals 1

    .line 894
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    return-object v0
.end method

.method public getInitiate()Lorg/bitcoin/paymentchannel/Protos$Initiate;
    .locals 1

    .line 741
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object v0
.end method

.method public getInitiateOrBuilder()Lorg/bitcoin/paymentchannel/Protos$InitiateOrBuilder;
    .locals 1

    .line 747
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    return-object v0
.end method

.method public getParserForType()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;",
            ">;"
        }
    .end annotation

    .line 413
    sget-object v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public getPaymentAck()Lorg/bitcoin/paymentchannel/Protos$PaymentAck;
    .locals 1

    .line 846
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    return-object v0
.end method

.method public getPaymentAckOrBuilder()Lorg/bitcoin/paymentchannel/Protos$PaymentAckOrBuilder;
    .locals 1

    .line 852
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    return-object v0
.end method

.method public getProvideContract()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;
    .locals 1

    .line 804
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object v0
.end method

.method public getProvideContractOrBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideContractOrBuilder;
    .locals 1

    .line 810
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    return-object v0
.end method

.method public getProvideRefund()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;
    .locals 1

    .line 762
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object v0
.end method

.method public getProvideRefundOrBuilder()Lorg/bitcoin/paymentchannel/Protos$ProvideRefundOrBuilder;
    .locals 1

    .line 768
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    return-object v0
.end method

.method public getReturnRefund()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;
    .locals 1

    .line 783
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    return-object v0
.end method

.method public getReturnRefundOrBuilder()Lorg/bitcoin/paymentchannel/Protos$ReturnRefundOrBuilder;
    .locals 1

    .line 789
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1013
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1017
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    .line 1018
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    .line 1019
    invoke-virtual {v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->getNumber()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1021
    :cond_1
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 1022
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    .line 1023
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1025
    :cond_2
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_3

    const/4 v1, 0x3

    .line 1026
    iget-object v3, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    .line 1027
    invoke-static {v1, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1029
    :cond_3
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v3, 0x8

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_4

    .line 1030
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    .line 1031
    invoke-static {v2, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1033
    :cond_4
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 1034
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    .line 1035
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1037
    :cond_5
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_6

    const/4 v1, 0x6

    .line 1038
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    .line 1039
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1041
    :cond_6
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_7

    const/4 v1, 0x7

    .line 1042
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    .line 1043
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1045
    :cond_7
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_8

    .line 1046
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    .line 1047
    invoke-static {v3, v1}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1049
    :cond_8
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9

    const/16 v1, 0x9

    .line 1050
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    .line 1051
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1053
    :cond_9
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_a

    const/16 v1, 0xa

    .line 1054
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    .line 1055
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1057
    :cond_a
    iget v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b

    const/16 v1, 0xb

    .line 1058
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    .line 1059
    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1061
    :cond_b
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 1062
    iput v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedSerializedSize:I

    return v0
.end method

.method public getServerVersion()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;
    .locals 1

    .line 720
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object v0
.end method

.method public getServerVersionOrBuilder()Lorg/bitcoin/paymentchannel/Protos$ServerVersionOrBuilder;
    .locals 1

    .line 726
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    return-object v0
.end method

.method public getSettlement()Lorg/bitcoin/paymentchannel/Protos$Settlement;
    .locals 1

    .line 867
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object v0
.end method

.method public getSettlementOrBuilder()Lorg/bitcoin/paymentchannel/Protos$SettlementOrBuilder;
    .locals 1

    .line 873
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    return-object v0
.end method

.method public getType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;
    .locals 1

    .line 672
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public getUpdatePayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;
    .locals 1

    .line 825
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public getUpdatePaymentOrBuilder()Lorg/bitcoin/paymentchannel/Protos$UpdatePaymentOrBuilder;
    .locals 1

    .line 831
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    return-object v0
.end method

.method public hasClientVersion()Z
    .locals 2

    .line 685
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

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

.method public hasError()Z
    .locals 2

    .line 882
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasInitiate()Z
    .locals 2

    .line 735
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

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

.method public hasPaymentAck()Z
    .locals 2

    .line 840
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasProvideContract()Z
    .locals 2

    .line 798
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasProvideRefund()Z
    .locals 2

    .line 756
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

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

.method public hasReturnRefund()Z
    .locals 2

    .line 777
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

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

.method public hasServerVersion()Z
    .locals 2

    .line 714
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

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

.method public hasSettlement()Z
    .locals 2

    .line 861
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasType()Z
    .locals 2

    .line 660
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasUpdatePayment()Z
    .locals 2

    .line 819
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v1, 0x80

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

    .line 396
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos;->access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;

    const-class v2, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    .line 397
    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 912
    iget-byte v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 916
    :cond_1
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasType()Z

    move-result v0

    if-nez v0, :cond_2

    .line 917
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    return v2

    .line 920
    :cond_2
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasClientVersion()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 921
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getClientVersion()Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ClientVersion;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_3

    .line 922
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    return v2

    .line 926
    :cond_3
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasServerVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 927
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getServerVersion()Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ServerVersion;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    .line 928
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    return v2

    .line 932
    :cond_4
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasInitiate()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 933
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getInitiate()Lorg/bitcoin/paymentchannel/Protos$Initiate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$Initiate;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_5

    .line 934
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    return v2

    .line 938
    :cond_5
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasProvideRefund()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 939
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getProvideRefund()Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_6

    .line 940
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    return v2

    .line 944
    :cond_6
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasReturnRefund()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 945
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getReturnRefund()Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_7

    .line 946
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    return v2

    .line 950
    :cond_7
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasProvideContract()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 951
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getProvideContract()Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$ProvideContract;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_8

    .line 952
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    return v2

    .line 956
    :cond_8
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasUpdatePayment()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 957
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getUpdatePayment()Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    .line 958
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    return v2

    .line 962
    :cond_9
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->hasSettlement()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 963
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getSettlement()Lorg/bitcoin/paymentchannel/Protos$Settlement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$Settlement;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_a

    .line 964
    iput-byte v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    return v2

    .line 968
    :cond_a
    iput-byte v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->memoizedIsInitialized:B

    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .locals 0

    .line 187
    invoke-virtual {p0, p1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 1127
    invoke-static {}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 2

    .line 1136
    new-instance v0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lorg/bitcoin/paymentchannel/Protos$1;)V

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .line 187
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->toBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;
    .locals 1

    .line 1131
    invoke-static {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->newBuilder(Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;)Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$Builder;

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

    .line 1070
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

    .line 974
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getSerializedSize()I

    .line 975
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    .line 976
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->type_:Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;

    invoke-virtual {v0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage$MessageType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 978
    :cond_0
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 979
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->clientVersion_:Lorg/bitcoin/paymentchannel/Protos$ClientVersion;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 981
    :cond_1
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    .line 982
    iget-object v2, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->serverVersion_:Lorg/bitcoin/paymentchannel/Protos$ServerVersion;

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 984
    :cond_2
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3

    .line 985
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->initiate_:Lorg/bitcoin/paymentchannel/Protos$Initiate;

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 987
    :cond_3
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x5

    .line 988
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideRefund_:Lorg/bitcoin/paymentchannel/Protos$ProvideRefund;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 990
    :cond_4
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    const/4 v0, 0x6

    .line 991
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->returnRefund_:Lorg/bitcoin/paymentchannel/Protos$ReturnRefund;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 993
    :cond_5
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x7

    .line 994
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->provideContract_:Lorg/bitcoin/paymentchannel/Protos$ProvideContract;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 996
    :cond_6
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    .line 997
    iget-object v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->updatePayment_:Lorg/bitcoin/paymentchannel/Protos$UpdatePayment;

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 999
    :cond_7
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/16 v0, 0x9

    .line 1000
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->settlement_:Lorg/bitcoin/paymentchannel/Protos$Settlement;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1002
    :cond_8
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/16 v0, 0xa

    .line 1003
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->error_:Lorg/bitcoin/paymentchannel/Protos$Error;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1005
    :cond_9
    iget v0, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/16 v0, 0xb

    .line 1006
    iget-object v1, p0, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->paymentAck_:Lorg/bitcoin/paymentchannel/Protos$PaymentAck;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 1008
    :cond_a
    invoke-virtual {p0}, Lorg/bitcoin/paymentchannel/Protos$TwoWayChannelMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method

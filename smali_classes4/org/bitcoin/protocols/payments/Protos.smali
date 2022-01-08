.class public final Lorg/bitcoin/protocols/payments/Protos;
.super Ljava/lang/Object;
.source "Protos.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bitcoin/protocols/payments/Protos$PaymentACK;,
        Lorg/bitcoin/protocols/payments/Protos$PaymentACKOrBuilder;,
        Lorg/bitcoin/protocols/payments/Protos$Payment;,
        Lorg/bitcoin/protocols/payments/Protos$PaymentOrBuilder;,
        Lorg/bitcoin/protocols/payments/Protos$X509Certificates;,
        Lorg/bitcoin/protocols/payments/Protos$X509CertificatesOrBuilder;,
        Lorg/bitcoin/protocols/payments/Protos$PaymentRequest;,
        Lorg/bitcoin/protocols/payments/Protos$PaymentRequestOrBuilder;,
        Lorg/bitcoin/protocols/payments/Protos$PaymentDetails;,
        Lorg/bitcoin/protocols/payments/Protos$PaymentDetailsOrBuilder;,
        Lorg/bitcoin/protocols/payments/Protos$Output;,
        Lorg/bitcoin/protocols/payments/Protos$OutputOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_payments_Output_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_payments_Output_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_payments_PaymentACK_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_payments_PaymentACK_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_payments_PaymentDetails_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_payments_PaymentDetails_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_payments_PaymentRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_payments_PaymentRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_payments_Payment_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_payments_Payment_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

.field private static final internal_static_payments_X509Certificates_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static internal_static_payments_X509Certificates_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "\n\u0014paymentrequest.proto\u0012\u0008payments\"+\n\u0006Output\u0012\u0011\n\u0006amount\u0018\u0001 \u0001(\u0004:\u00010\u0012\u000e\n\u0006script\u0018\u0002 \u0002(\u000c\"\u00a3\u0001\n\u000ePaymentDetails\u0012\u0015\n\u0007network\u0018\u0001 \u0001(\t:\u0004main\u0012!\n\u0007outputs\u0018\u0002 \u0003(\u000b2\u0010.payments.Output\u0012\u000c\n\u0004time\u0018\u0003 \u0002(\u0004\u0012\u000f\n\u0007expires\u0018\u0004 \u0001(\u0004\u0012\u000c\n\u0004memo\u0018\u0005 \u0001(\t\u0012\u0013\n\u000bpayment_url\u0018\u0006 \u0001(\t\u0012\u0015\n\rmerchant_data\u0018\u0007 \u0001(\u000c\"\u0095\u0001\n\u000ePaymentRequest\u0012\"\n\u0017payment_details_version\u0018\u0001 \u0001(\r:\u00011\u0012\u0016\n\u0008pki_type\u0018\u0002 \u0001(\t:\u0004none\u0012\u0010\n\u0008pki_data\u0018\u0003 \u0001(\u000c\u0012\"\n\u001aserialized_payment_details\u0018\u0004 \u0002(\u000c\u0012\u0011\n\tsignature\u0018\u0005 \u0001(\u000c\"\'\n\u0010X"

    const-string v1, "509Certificates\u0012\u0013\n\u000bcertificate\u0018\u0001 \u0003(\u000c\"i\n\u0007Payment\u0012\u0015\n\rmerchant_data\u0018\u0001 \u0001(\u000c\u0012\u0014\n\u000ctransactions\u0018\u0002 \u0003(\u000c\u0012#\n\trefund_to\u0018\u0003 \u0003(\u000b2\u0010.payments.Output\u0012\u000c\n\u0004memo\u0018\u0004 \u0001(\t\">\n\nPaymentACK\u0012\"\n\u0007payment\u0018\u0001 \u0002(\u000b2\u0011.payments.Payment\u0012\u000c\n\u0004memo\u0018\u0002 \u0001(\tB(\n\u001eorg.bitcoin.protocols.paymentsB\u0006Protos"

    .line 5941
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 5960
    new-instance v1, Lorg/bitcoin/protocols/payments/Protos$1;

    invoke-direct {v1}, Lorg/bitcoin/protocols/payments/Protos$1;-><init>()V

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 5969
    invoke-static {v0, v3, v1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;)V

    .line 5973
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_Output_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5974
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Amount"

    const-string v3, "Script"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_Output_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5979
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_PaymentDetails_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5980
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Network"

    const-string v3, "Outputs"

    const-string v4, "Time"

    const-string v5, "Expires"

    const-string v6, "Memo"

    const-string v7, "PaymentUrl"

    const-string v8, "MerchantData"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_PaymentDetails_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5985
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_PaymentRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5986
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "PaymentDetailsVersion"

    const-string v3, "PkiType"

    const-string v4, "PkiData"

    const-string v5, "SerializedPaymentDetails"

    const-string v6, "Signature"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_PaymentRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5991
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_X509Certificates_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5992
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Certificate"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_X509Certificates_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 5997
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_Payment_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 5998
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v2, "Memo"

    const-string v3, "MerchantData"

    const-string v4, "Transactions"

    const-string v5, "RefundTo"

    filled-new-array {v3, v4, v5, v2}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_Payment_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    .line 6003
    invoke-static {}, Lorg/bitcoin/protocols/payments/Protos;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_PaymentACK_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 6004
    new-instance v1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const-string v3, "Payment"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_PaymentACK_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_Output_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_Output_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_PaymentDetails_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_PaymentDetails_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_PaymentRequest_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2700()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_PaymentRequest_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$3900()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_X509Certificates_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4000()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_X509Certificates_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4700()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_Payment_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4800()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_Payment_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$6000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_PaymentACK_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$6100()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->internal_static_payments_PaymentACK_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$7002(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 0

    .line 6
    sput-object p0, Lorg/bitcoin/protocols/payments/Protos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object p0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 5936
    sget-object v0, Lorg/bitcoin/protocols/payments/Protos;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    return-void
.end method

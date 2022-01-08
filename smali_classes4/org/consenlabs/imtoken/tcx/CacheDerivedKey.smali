.class public final Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;
.super Ljava/lang/Object;
.source "CacheDerivedKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResult;,
        Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$BiometricModeResultOrBuilder;,
        Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletId;,
        Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$WalletIdOrBuilder;,
        Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResult;,
        Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$CacheDerivedKeyResultOrBuilder;,
        Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResult;,
        Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$DerivedKeyResultOrBuilder;,
        Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParam;,
        Lorg/consenlabs/imtoken/tcx/CacheDerivedKey$VerifyDerivedKeyParamOrBuilder;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_org_consenlabs_imtoken_tcx_BiometricModeResult_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_org_consenlabs_imtoken_tcx_BiometricModeResult_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_org_consenlabs_imtoken_tcx_CacheDerivedKeyResult_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_org_consenlabs_imtoken_tcx_CacheDerivedKeyResult_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_org_consenlabs_imtoken_tcx_DerivedKeyResult_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_org_consenlabs_imtoken_tcx_DerivedKeyResult_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_org_consenlabs_imtoken_tcx_VerifyDerivedKeyParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_org_consenlabs_imtoken_tcx_VerifyDerivedKeyParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

.field private static final internal_static_org_consenlabs_imtoken_tcx_WalletId_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

.field private static final internal_static_org_consenlabs_imtoken_tcx_WalletId_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "\n\u0017cache_derived_key.proto\u0012\u001aorg.consenlabs.imtoken.tcx\"7\n\u0015VerifyDerivedKeyParam\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u0012\n\nderivedKey\u0018\u0002 \u0001(\t\"2\n\u0010DerivedKeyResult\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u0012\n\nderivedKey\u0018\u0002 \u0001(\t\"K\n\u0015CacheDerivedKeyResult\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u0018\n\u0010enableDerivedKey\u0018\u0002 \u0001(\u0008\u0012\u000c\n\u0004mode\u0018\u0003 \u0001(\t\"\u0016\n\u0008WalletId\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\"#\n\u0013BiometricModeResult\u0012\u000c\n\u0004mode\u0018\u0001 \u0001(\tb\u0006proto3"

    .line 3393
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3404
    invoke-static {v0, v2}, Lcom/google/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    sput-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    .line 3408
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->internal_static_org_consenlabs_imtoken_tcx_VerifyDerivedKeyParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3409
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "DerivedKey"

    const-string v3, "Id"

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->internal_static_org_consenlabs_imtoken_tcx_VerifyDerivedKeyParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 3414
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->internal_static_org_consenlabs_imtoken_tcx_DerivedKeyResult_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3415
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->internal_static_org_consenlabs_imtoken_tcx_DerivedKeyResult_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 3420
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->internal_static_org_consenlabs_imtoken_tcx_CacheDerivedKeyResult_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3421
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-string v2, "Mode"

    const-string v4, "EnableDerivedKey"

    filled-new-array {v3, v4, v2}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v0, v4}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->internal_static_org_consenlabs_imtoken_tcx_CacheDerivedKeyResult_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 3426
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->internal_static_org_consenlabs_imtoken_tcx_WalletId_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3427
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v3}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->internal_static_org_consenlabs_imtoken_tcx_WalletId_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    .line 3432
    invoke-static {}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Descriptors$Descriptor;

    sput-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->internal_static_org_consenlabs_imtoken_tcx_BiometricModeResult_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    .line 3433
    new-instance v1, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    sput-object v1, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->internal_static_org_consenlabs_imtoken_tcx_BiometricModeResult_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

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
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->internal_static_org_consenlabs_imtoken_tcx_VerifyDerivedKeyParam_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->internal_static_org_consenlabs_imtoken_tcx_VerifyDerivedKeyParam_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$1300()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->internal_static_org_consenlabs_imtoken_tcx_DerivedKeyResult_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$1400()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->internal_static_org_consenlabs_imtoken_tcx_DerivedKeyResult_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$2600()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->internal_static_org_consenlabs_imtoken_tcx_CacheDerivedKeyResult_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$2700()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->internal_static_org_consenlabs_imtoken_tcx_CacheDerivedKeyResult_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$4000()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->internal_static_org_consenlabs_imtoken_tcx_WalletId_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$4100()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->internal_static_org_consenlabs_imtoken_tcx_WalletId_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method static synthetic access$5100()Lcom/google/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->internal_static_org_consenlabs_imtoken_tcx_BiometricModeResult_descriptor:Lcom/google/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method static synthetic access$5200()Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 1

    .line 6
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->internal_static_org_consenlabs_imtoken_tcx_BiometricModeResult_fieldAccessorTable:Lcom/google/protobuf/GeneratedMessageV3$FieldAccessorTable;

    return-object v0
.end method

.method public static getDescriptor()Lcom/google/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 3388
    sget-object v0, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->descriptor:Lcom/google/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistry;)V
    .locals 0

    .line 14
    invoke-static {p0}, Lorg/consenlabs/imtoken/tcx/CacheDerivedKey;->registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 0

    return-void
.end method

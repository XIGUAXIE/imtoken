.class public final enum Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;
.super Ljava/lang/Enum;
.source "ELFAnalyser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ParameterType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;

.field public static final enum NTBS:Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;

.field public static final enum UINT32:Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;

.field public static final enum ULEB128:Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 349
    new-instance v0, Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;

    const/4 v1, 0x0

    const-string v2, "UINT32"

    invoke-direct {v0, v2, v1}, Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;->UINT32:Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;

    new-instance v0, Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;

    const/4 v2, 0x1

    const-string v3, "NTBS"

    invoke-direct {v0, v3, v2}, Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;->NTBS:Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;

    new-instance v0, Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;

    const/4 v3, 0x2

    const-string v4, "ULEB128"

    invoke-direct {v0, v4, v3}, Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;->ULEB128:Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;

    .line 348
    sget-object v5, Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;->UINT32:Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;->NTBS:Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;->$VALUES:[Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 348
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;
    .locals 1

    .line 348
    const-class v0, Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;

    return-object p0
.end method

.method public static values()[Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;
    .locals 1

    .line 348
    sget-object v0, Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;->$VALUES:[Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;

    invoke-virtual {v0}, [Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/jna/ELFAnalyser$ArmAeabiAttributesTag$ParameterType;

    return-object v0
.end method

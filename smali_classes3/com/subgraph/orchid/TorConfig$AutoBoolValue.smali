.class public final enum Lcom/subgraph/orchid/TorConfig$AutoBoolValue;
.super Ljava/lang/Enum;
.source "TorConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/TorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoBoolValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/subgraph/orchid/TorConfig$AutoBoolValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

.field public static final enum AUTO:Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

.field public static final enum FALSE:Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

.field public static final enum TRUE:Lcom/subgraph/orchid/TorConfig$AutoBoolValue;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 143
    new-instance v0, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    const/4 v1, 0x0

    const-string v2, "TRUE"

    invoke-direct {v0, v2, v1}, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;->TRUE:Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    new-instance v0, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    const/4 v2, 0x1

    const-string v3, "FALSE"

    invoke-direct {v0, v3, v2}, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;->FALSE:Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    new-instance v0, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    const/4 v3, 0x2

    const-string v4, "AUTO"

    invoke-direct {v0, v4, v3}, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;->AUTO:Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    sget-object v5, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;->TRUE:Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    aput-object v5, v4, v1

    sget-object v1, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;->FALSE:Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;->$VALUES:[Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 143
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/TorConfig$AutoBoolValue;
    .locals 1

    .line 143
    const-class v0, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    return-object p0
.end method

.method public static values()[Lcom/subgraph/orchid/TorConfig$AutoBoolValue;
    .locals 1

    .line 143
    sget-object v0, Lcom/subgraph/orchid/TorConfig$AutoBoolValue;->$VALUES:[Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/TorConfig$AutoBoolValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/TorConfig$AutoBoolValue;

    return-object v0
.end method

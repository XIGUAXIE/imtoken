.class public final enum Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;
.super Ljava/lang/Enum;
.source "ConsensusDocument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subgraph/orchid/ConsensusDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConsensusFlavor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

.field public static final enum MICRODESC:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

.field public static final enum NS:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    const/4 v1, 0x0

    const-string v2, "NS"

    invoke-direct {v0, v2, v1}, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;->NS:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    new-instance v0, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    const/4 v2, 0x1

    const-string v3, "MICRODESC"

    invoke-direct {v0, v3, v2}, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;->MICRODESC:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    sget-object v4, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;->NS:Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;->$VALUES:[Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;
    .locals 1

    .line 10
    const-class v0, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    return-object p0
.end method

.method public static values()[Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;
    .locals 1

    .line 10
    sget-object v0, Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;->$VALUES:[Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    invoke-virtual {v0}, [Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/subgraph/orchid/ConsensusDocument$ConsensusFlavor;

    return-object v0
.end method

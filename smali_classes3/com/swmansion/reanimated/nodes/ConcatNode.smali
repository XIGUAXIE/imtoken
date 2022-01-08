.class public Lcom/swmansion/reanimated/nodes/ConcatNode;
.super Lcom/swmansion/reanimated/nodes/Node;
.source "ConcatNode.java"


# static fields
.field private static final sFormatter:Ljava/text/NumberFormat;


# instance fields
.field private final mInputIDs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/swmansion/reanimated/nodes/ConcatNode;->sFormatter:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 15
    sget-object v0, Lcom/swmansion/reanimated/nodes/ConcatNode;->sFormatter:Ljava/text/NumberFormat;

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setGroupingUsed(Z)V

    return-void
.end method

.method public constructor <init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/swmansion/reanimated/nodes/Node;-><init>(ILcom/facebook/react/bridge/ReadableMap;Lcom/swmansion/reanimated/NodesManager;)V

    const-string p1, "input"

    .line 20
    invoke-interface {p2, p1}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object p1

    invoke-static {p1}, Lcom/swmansion/reanimated/Utils;->processIntArray(Lcom/facebook/react/bridge/ReadableArray;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/swmansion/reanimated/nodes/ConcatNode;->mInputIDs:[I

    return-void
.end method


# virtual methods
.method protected bridge synthetic evaluate()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/swmansion/reanimated/nodes/ConcatNode;->evaluate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected evaluate()Ljava/lang/String;
    .locals 5

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 26
    :goto_0
    iget-object v2, p0, Lcom/swmansion/reanimated/nodes/ConcatNode;->mInputIDs:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 27
    iget-object v2, p0, Lcom/swmansion/reanimated/nodes/ConcatNode;->mNodesManager:Lcom/swmansion/reanimated/NodesManager;

    iget-object v3, p0, Lcom/swmansion/reanimated/nodes/ConcatNode;->mInputIDs:[I

    aget v3, v3, v1

    const-class v4, Lcom/swmansion/reanimated/nodes/Node;

    invoke-virtual {v2, v3, v4}, Lcom/swmansion/reanimated/NodesManager;->findNodeById(ILjava/lang/Class;)Lcom/swmansion/reanimated/nodes/Node;

    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lcom/swmansion/reanimated/nodes/Node;->value()Ljava/lang/Object;

    move-result-object v2

    .line 29
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_0

    .line 30
    sget-object v3, Lcom/swmansion/reanimated/nodes/ConcatNode;->sFormatter:Ljava/text/NumberFormat;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v3, v2}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 32
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

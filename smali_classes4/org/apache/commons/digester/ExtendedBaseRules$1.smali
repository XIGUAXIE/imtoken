.class Lorg/apache/commons/digester/ExtendedBaseRules$1;
.super Ljava/lang/Object;
.source "ExtendedBaseRules.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/digester/ExtendedBaseRules;->match(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/digester/Rule;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/digester/ExtendedBaseRules;


# direct methods
.method constructor <init>(Lorg/apache/commons/digester/ExtendedBaseRules;)V
    .locals 0

    .line 424
    iput-object p1, p0, Lorg/apache/commons/digester/ExtendedBaseRules$1;->this$0:Lorg/apache/commons/digester/ExtendedBaseRules;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 424
    check-cast p1, Lorg/apache/commons/digester/Rule;

    check-cast p2, Lorg/apache/commons/digester/Rule;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/digester/ExtendedBaseRules$1;->compare(Lorg/apache/commons/digester/Rule;Lorg/apache/commons/digester/Rule;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/commons/digester/Rule;Lorg/apache/commons/digester/Rule;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 426
    iget-object v0, p0, Lorg/apache/commons/digester/ExtendedBaseRules$1;->this$0:Lorg/apache/commons/digester/ExtendedBaseRules;

    invoke-static {v0}, Lorg/apache/commons/digester/ExtendedBaseRules;->access$000(Lorg/apache/commons/digester/ExtendedBaseRules;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 427
    iget-object v0, p0, Lorg/apache/commons/digester/ExtendedBaseRules$1;->this$0:Lorg/apache/commons/digester/ExtendedBaseRules;

    invoke-static {v0}, Lorg/apache/commons/digester/ExtendedBaseRules;->access$000(Lorg/apache/commons/digester/ExtendedBaseRules;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1

    :cond_1
    if-nez p2, :cond_2

    const/4 p1, 0x1

    return p1

    .line 444
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

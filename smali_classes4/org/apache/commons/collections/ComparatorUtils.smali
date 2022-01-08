.class public Lorg/apache/commons/collections/ComparatorUtils;
.super Ljava/lang/Object;
.source "ComparatorUtils.java"


# static fields
.field public static final NATURAL_COMPARATOR:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    invoke-static {}, Lorg/apache/commons/collections/comparators/ComparableComparator;->getInstance()Lorg/apache/commons/collections/comparators/ComparableComparator;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static booleanComparator(Z)Ljava/util/Comparator;
    .locals 0

    .line 147
    invoke-static {p0}, Lorg/apache/commons/collections/comparators/BooleanComparator;->getBooleanComparator(Z)Lorg/apache/commons/collections/comparators/BooleanComparator;

    move-result-object p0

    return-object p0
.end method

.method public static chainedComparator(Ljava/util/Collection;)Ljava/util/Comparator;
    .locals 1

    .line 115
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/util/Comparator;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Comparator;

    check-cast p0, [Ljava/util/Comparator;

    invoke-static {p0}, Lorg/apache/commons/collections/ComparatorUtils;->chainedComparator([Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static chainedComparator(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Comparator;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    .line 80
    invoke-static {v0}, Lorg/apache/commons/collections/ComparatorUtils;->chainedComparator([Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static chainedComparator([Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 3

    .line 93
    new-instance v0, Lorg/apache/commons/collections/comparators/ComparatorChain;

    invoke-direct {v0}, Lorg/apache/commons/collections/comparators/ComparatorChain;-><init>()V

    const/4 v1, 0x0

    .line 94
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 95
    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 98
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections/comparators/ComparatorChain;->addComparator(Ljava/util/Comparator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Comparator cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0
.end method

.method public static max(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 0

    if-nez p2, :cond_0

    .line 235
    sget-object p2, Lorg/apache/commons/collections/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 237
    :cond_0
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static min(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Ljava/lang/Object;
    .locals 0

    if-nez p2, :cond_0

    .line 217
    sget-object p2, Lorg/apache/commons/collections/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 219
    :cond_0
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    if-gez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static naturalComparator()Ljava/util/Comparator;
    .locals 1

    .line 65
    sget-object v0, Lorg/apache/commons/collections/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    return-object v0
.end method

.method public static nullHighComparator(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2

    if-nez p0, :cond_0

    .line 181
    sget-object p0, Lorg/apache/commons/collections/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 183
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/comparators/NullComparator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/comparators/NullComparator;-><init>(Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public static nullLowComparator(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2

    if-nez p0, :cond_0

    .line 163
    sget-object p0, Lorg/apache/commons/collections/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 165
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/comparators/NullComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/collections/comparators/NullComparator;-><init>(Ljava/util/Comparator;Z)V

    return-object v0
.end method

.method public static reversedComparator(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1

    if-nez p0, :cond_0

    .line 129
    sget-object p0, Lorg/apache/commons/collections/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 131
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/comparators/ReverseComparator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/comparators/ReverseComparator;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static transformedComparator(Ljava/util/Comparator;Lorg/apache/commons/collections/Transformer;)Ljava/util/Comparator;
    .locals 1

    if-nez p0, :cond_0

    .line 200
    sget-object p0, Lorg/apache/commons/collections/ComparatorUtils;->NATURAL_COMPARATOR:Ljava/util/Comparator;

    .line 202
    :cond_0
    new-instance v0, Lorg/apache/commons/collections/comparators/TransformingComparator;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/collections/comparators/TransformingComparator;-><init>(Lorg/apache/commons/collections/Transformer;Ljava/util/Comparator;)V

    return-object v0
.end method

.class public final Lorg/apache/commons/collections/functors/AnyPredicate;
.super Ljava/lang/Object;
.source "AnyPredicate.java"

# interfaces
.implements Lorg/apache/commons/collections/Predicate;
.implements Lorg/apache/commons/collections/functors/PredicateDecorator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x671ca93522adbaf6L


# instance fields
.field private final iPredicates:[Lorg/apache/commons/collections/Predicate;


# direct methods
.method public constructor <init>([Lorg/apache/commons/collections/Predicate;)V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput-object p1, p0, Lorg/apache/commons/collections/functors/AnyPredicate;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    return-void
.end method

.method public static getInstance(Ljava/util/Collection;)Lorg/apache/commons/collections/Predicate;
    .locals 2

    .line 80
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate(Ljava/util/Collection;)[Lorg/apache/commons/collections/Predicate;

    move-result-object p0

    .line 81
    array-length v0, p0

    if-nez v0, :cond_0

    .line 82
    sget-object p0, Lorg/apache/commons/collections/functors/FalsePredicate;->INSTANCE:Lorg/apache/commons/collections/Predicate;

    return-object p0

    .line 84
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 85
    aget-object p0, p0, v0

    return-object p0

    .line 87
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/functors/AnyPredicate;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/AnyPredicate;-><init>([Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method

.method public static getInstance([Lorg/apache/commons/collections/Predicate;)Lorg/apache/commons/collections/Predicate;
    .locals 2

    .line 58
    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->validate([Lorg/apache/commons/collections/Predicate;)V

    .line 59
    array-length v0, p0

    if-nez v0, :cond_0

    .line 60
    sget-object p0, Lorg/apache/commons/collections/functors/FalsePredicate;->INSTANCE:Lorg/apache/commons/collections/Predicate;

    return-object p0

    .line 62
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 63
    aget-object p0, p0, v0

    return-object p0

    .line 65
    :cond_1
    new-instance v0, Lorg/apache/commons/collections/functors/AnyPredicate;

    invoke-static {p0}, Lorg/apache/commons/collections/functors/FunctorUtils;->copy([Lorg/apache/commons/collections/Predicate;)[Lorg/apache/commons/collections/Predicate;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/functors/AnyPredicate;-><init>([Lorg/apache/commons/collections/Predicate;)V

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 108
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/collections/functors/AnyPredicate;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 109
    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Lorg/apache/commons/collections/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getPredicates()[Lorg/apache/commons/collections/Predicate;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/commons/collections/functors/AnyPredicate;->iPredicates:[Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method

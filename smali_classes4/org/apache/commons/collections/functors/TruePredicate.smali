.class public final Lorg/apache/commons/collections/functors/TruePredicate;
.super Ljava/lang/Object;
.source "TruePredicate.java"

# interfaces
.implements Lorg/apache/commons/collections/Predicate;
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lorg/apache/commons/collections/Predicate;

.field private static final serialVersionUID:J = 0x2ed594d9c151262cL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lorg/apache/commons/collections/functors/TruePredicate;

    invoke-direct {v0}, Lorg/apache/commons/collections/functors/TruePredicate;-><init>()V

    sput-object v0, Lorg/apache/commons/collections/functors/TruePredicate;->INSTANCE:Lorg/apache/commons/collections/Predicate;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/collections/Predicate;
    .locals 1

    .line 46
    sget-object v0, Lorg/apache/commons/collections/functors/TruePredicate;->INSTANCE:Lorg/apache/commons/collections/Predicate;

    return-object v0
.end method


# virtual methods
.method public evaluate(Ljava/lang/Object;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

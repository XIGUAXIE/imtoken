.class public final Lorg/apache/commons/validator/routines/checkdigit/EAN13CheckDigit;
.super Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;
.source "EAN13CheckDigit.java"


# static fields
.field public static final EAN13_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

.field private static final POSITION_WEIGHT:[I

.field private static final serialVersionUID:J = 0x17f53788e307102bL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    new-instance v0, Lorg/apache/commons/validator/routines/checkdigit/EAN13CheckDigit;

    invoke-direct {v0}, Lorg/apache/commons/validator/routines/checkdigit/EAN13CheckDigit;-><init>()V

    sput-object v0, Lorg/apache/commons/validator/routines/checkdigit/EAN13CheckDigit;->EAN13_CHECK_DIGIT:Lorg/apache/commons/validator/routines/checkdigit/CheckDigit;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 51
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/validator/routines/checkdigit/EAN13CheckDigit;->POSITION_WEIGHT:[I

    return-void

    :array_0
    .array-data 4
        0x3
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 57
    invoke-direct {p0, v0}, Lorg/apache/commons/validator/routines/checkdigit/ModulusCheckDigit;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected weightedValue(III)I
    .locals 0

    .line 75
    sget-object p2, Lorg/apache/commons/validator/routines/checkdigit/EAN13CheckDigit;->POSITION_WEIGHT:[I

    rem-int/lit8 p3, p3, 0x2

    aget p2, p2, p3

    mul-int p1, p1, p2

    return p1
.end method

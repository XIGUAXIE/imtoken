.class public Lorg/spongycastle/math/ec/ECPoint$Fp;
.super Lorg/spongycastle/math/ec/ECPoint$AbstractFp;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 1

    const/4 v0, 0x0

    .line 606
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 1

    .line 621
    invoke-direct {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-ne p2, p1, :cond_2

    .line 628
    iput-boolean p4, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    return-void

    .line 625
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Exactly one of the field elements is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V
    .locals 0

    .line 633
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;)V

    .line 635
    iput-boolean p5, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    return-void
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 656
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 660
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 666
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 669
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 670
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v2

    .line 672
    iget-object v4, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v5, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 673
    iget-object v6, v1, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v7, v1, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    if-eqz v2, :cond_1a

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v2, v8, :cond_11

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-eq v2, v11, :cond_4

    if-ne v2, v10, :cond_3

    goto :goto_0

    .line 874
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unsupported coordinate system"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 745
    :cond_4
    :goto_0
    iget-object v12, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v12, v12, v9

    .line 746
    iget-object v1, v1, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v1, v1, v9

    .line 748
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v13

    if-nez v13, :cond_8

    .line 752
    invoke-virtual {v12, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8

    .line 756
    invoke-virtual {v4, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v5, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 757
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 759
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 761
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 763
    :cond_5
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 766
    :cond_6
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 767
    invoke-virtual {v4, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v6, v15}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 768
    invoke-virtual {v4, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v14, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 770
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v14, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v14, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 771
    invoke-virtual {v4, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    if-eqz v13, :cond_7

    move-object v14, v15

    goto :goto_1

    .line 780
    :cond_7
    invoke-virtual {v1, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    const/4 v14, 0x0

    :goto_1
    move-object v5, v4

    move-object v4, v6

    goto/16 :goto_6

    :cond_8
    if-eqz v13, :cond_9

    goto :goto_2

    .line 792
    :cond_9
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 793
    invoke-virtual {v14, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 794
    invoke-virtual {v14, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 795
    invoke-virtual {v14, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 798
    :goto_2
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v14

    if-eqz v14, :cond_a

    goto :goto_3

    .line 806
    :cond_a
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 807
    invoke-virtual {v15, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 808
    invoke-virtual {v15, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 809
    invoke-virtual {v15, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 812
    :goto_3
    invoke-virtual {v4, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 813
    invoke-virtual {v5, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 816
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v15

    if-eqz v15, :cond_c

    .line 818
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 821
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 825
    :cond_b
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 828
    :cond_c
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 829
    invoke-virtual {v15, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 830
    invoke-virtual {v15, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 832
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v9, v11}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 833
    invoke-virtual {v4, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v7, v8, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyMinusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    if-nez v13, :cond_d

    .line 838
    invoke-virtual {v6, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    goto :goto_4

    :cond_d
    move-object v5, v6

    :goto_4
    if-nez v14, :cond_e

    .line 842
    invoke-virtual {v5, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    goto :goto_5

    :cond_e
    move-object v1, v5

    :goto_5
    move-object v5, v4

    move-object v4, v9

    if-ne v1, v6, :cond_f

    move-object v14, v15

    goto :goto_6

    :cond_f
    const/4 v14, 0x0

    :goto_6
    if-ne v2, v10, :cond_10

    .line 860
    invoke-virtual {v0, v1, v14}, Lorg/spongycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v6, 0x2

    new-array v6, v6, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    const/4 v8, 0x1

    aput-object v2, v6, v8

    goto :goto_7

    :cond_10
    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v2, v8, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v1, v2, v7

    move-object v6, v2

    .line 869
    :goto_7
    new-instance v1, Lorg/spongycastle/math/ec/ECPoint$Fp;

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v1

    .line 702
    :cond_11
    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v2, v2, v8

    .line 703
    iget-object v1, v1, Lorg/spongycastle/math/ec/ECPoint;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v1, v1, v8

    .line 705
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v8

    .line 706
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v9

    if-eqz v8, :cond_12

    goto :goto_8

    .line 708
    :cond_12
    invoke-virtual {v7, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    :goto_8
    if-eqz v9, :cond_13

    goto :goto_9

    .line 709
    :cond_13
    invoke-virtual {v5, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 710
    :goto_9
    invoke-virtual {v7, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    if-eqz v8, :cond_14

    goto :goto_a

    .line 711
    :cond_14
    invoke-virtual {v6, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    :goto_a
    if-eqz v9, :cond_15

    goto :goto_b

    .line 712
    :cond_15
    invoke-virtual {v4, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 713
    :goto_b
    invoke-virtual {v6, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 716
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v10

    if-eqz v10, :cond_17

    .line 718
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 721
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 725
    :cond_16
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    :cond_17
    if-eqz v8, :cond_18

    move-object v2, v1

    goto :goto_c

    :cond_18
    if-eqz v9, :cond_19

    goto :goto_c

    .line 729
    :cond_19
    invoke-virtual {v2, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 730
    :goto_c
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 731
    invoke-virtual {v1, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 732
    invoke-virtual {v1, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 733
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 735
    invoke-virtual {v6, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 736
    invoke-virtual {v1, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v7, v5, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->multiplyMinusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 737
    invoke-virtual {v8, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 739
    new-instance v8, Lorg/spongycastle/math/ec/ECPoint$Fp;

    const/4 v2, 0x1

    new-array v7, v2, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aput-object v1, v7, v2

    iget-boolean v1, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move-object v2, v8

    move-object v4, v6

    move-object v6, v7

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v8

    .line 679
    :cond_1a
    invoke-virtual {v6, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v7, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 681
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 683
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 686
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 690
    :cond_1b
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 693
    :cond_1c
    invoke-virtual {v2, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 694
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 695
    invoke-virtual {v4, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 697
    new-instance v4, Lorg/spongycastle/math/ec/ECPoint$Fp;

    iget-boolean v5, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v4, v3, v2, v1, v5}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v4
.end method

.method protected calculateJacobianModifiedW(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    .line 1285
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1286
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 1293
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p2

    .line 1296
    :cond_1
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    .line 1297
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->negate()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p2

    .line 1298
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v1

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1300
    invoke-virtual {p1, p2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->negate()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    goto :goto_0

    .line 1304
    :cond_2
    invoke-virtual {p1, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method protected detach()Lorg/spongycastle/math/ec/ECPoint;
    .locals 4

    .line 640
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getAffineXCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getAffineYCoord()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected doubleProductFromSquares(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    .line 1262
    invoke-virtual {p1, p2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p1, p3}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p1, p4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    return-object p1
.end method

.method protected eight(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    .line 1252
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->four(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    return-object p1
.end method

.method protected four(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    .line 1247
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    return-object p1
.end method

.method protected getJacobianModifiedW()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 4

    .line 1311
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 1315
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lorg/spongycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    move-object v0, v2

    :cond_0
    return-object v0
.end method

.method public getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x4

    .line 645
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurveCoordinateSystem()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 647
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    return-object p1

    .line 650
    :cond_0
    invoke-super {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$AbstractFp;->getZCoord(I)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    return-object p1
.end method

.method public negate()Lorg/spongycastle/math/ec/ECPoint;
    .locals 7

    .line 1267
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1272
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    .line 1273
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1277
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->negate()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v5, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    iget-boolean v6, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 1280
    :cond_1
    new-instance v0, Lorg/spongycastle/math/ec/ECPoint$Fp;

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->negate()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v0, v2, v1, v3, v4}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method protected three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 1242
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    return-object p1
.end method

.method public threeTimes()Lorg/spongycastle/math/ec/ECPoint;
    .locals 8

    .line 1091
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 1096
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1097
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    .line 1102
    :cond_1
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 1103
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x4

    if-eq v2, v0, :cond_2

    .line 1138
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    .line 1133
    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 1109
    :cond_3
    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1111
    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1112
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1113
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/spongycastle/math/ec/ECPoint$Fp;->three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v6

    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1114
    invoke-virtual {v5}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1116
    invoke-virtual {p0, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1117
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1119
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 1122
    :cond_4
    invoke-virtual {v6, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1123
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->invert()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1124
    invoke-virtual {v6, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1125
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1127
    invoke-virtual {v3, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v5, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1128
    invoke-virtual {v2, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1129
    new-instance v2, Lorg/spongycastle/math/ec/ECPoint$Fp;

    iget-boolean v3, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v2, v1, v4, v0, v3}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v2
.end method

.method public timesPow2(I)Lorg/spongycastle/math/ec/ECPoint;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    if-ltz v1, :cond_11

    if-eqz v1, :cond_10

    .line 1149
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1155
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 1158
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    .line 1160
    iget-object v4, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1161
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1163
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 1166
    :cond_2
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v5

    .line 1168
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1169
    iget-object v7, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1170
    iget-object v8, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    array-length v8, v8

    const/4 v9, 0x0

    if-ge v8, v2, :cond_3

    sget-object v8, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v8}, Lorg/spongycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    goto :goto_0

    :cond_3
    iget-object v8, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v8, v8, v9

    .line 1172
    :goto_0
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v10

    const/4 v11, 0x4

    const/4 v12, 0x2

    if-nez v10, :cond_7

    if-eq v5, v2, :cond_6

    if-eq v5, v12, :cond_5

    if-eq v5, v11, :cond_4

    goto :goto_1

    .line 1186
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    .line 1183
    invoke-virtual {v0, v8, v6}, Lorg/spongycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    goto :goto_1

    .line 1177
    :cond_6
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1178
    invoke-virtual {v7, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1179
    invoke-virtual {v4, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1180
    invoke-virtual {v0, v8, v6}, Lorg/spongycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    :cond_7
    :goto_1
    const/4 v10, 0x0

    move-object/from16 v16, v6

    move-object v6, v4

    move-object v4, v7

    move-object/from16 v7, v16

    :goto_2
    if-ge v10, v1, :cond_b

    .line 1193
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1195
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 1198
    :cond_8
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1199
    invoke-virtual {v0, v13}, Lorg/spongycastle/math/ec/ECPoint$Fp;->three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1200
    invoke-virtual {v0, v6}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1201
    invoke-virtual {v14, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1202
    invoke-virtual {v4, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1203
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1204
    invoke-virtual {v0, v6}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1206
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v15

    if-nez v15, :cond_9

    .line 1208
    invoke-virtual {v13, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1209
    invoke-virtual {v6, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1212
    :cond_9
    invoke-virtual {v13}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v0, v4}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v15, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1213
    invoke-virtual {v4, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v13, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1214
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v8, v14

    goto :goto_3

    :cond_a
    invoke-virtual {v14, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object v8, v4

    :goto_3
    add-int/lit8 v10, v10, 0x1

    move-object v4, v9

    const/4 v9, 0x0

    goto :goto_2

    :cond_b
    if-eqz v5, :cond_f

    if-eq v5, v2, :cond_e

    if-eq v5, v12, :cond_d

    if-ne v5, v11, :cond_c

    .line 1229
    new-instance v1, Lorg/spongycastle/math/ec/ECPoint$Fp;

    new-array v9, v12, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aput-object v8, v9, v5

    aput-object v7, v9, v2

    iget-boolean v7, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move-object v2, v1

    move-object v5, v6

    move-object v6, v9

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v1

    .line 1231
    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unsupported coordinate system"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1227
    :cond_d
    new-instance v1, Lorg/spongycastle/math/ec/ECPoint$Fp;

    new-array v7, v2, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aput-object v8, v7, v2

    iget-boolean v8, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move-object v2, v1

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v1

    .line 1223
    :cond_e
    invoke-virtual {v4, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1224
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v8, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1225
    new-instance v8, Lorg/spongycastle/math/ec/ECPoint$Fp;

    new-array v7, v2, [Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aput-object v1, v7, v2

    iget-boolean v1, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move-object v2, v8

    move-object v5, v6

    move-object v6, v7

    move v7, v1

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v8

    .line 1220
    :cond_f
    invoke-virtual {v8}, Lorg/spongycastle/math/ec/ECFieldElement;->invert()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1221
    new-instance v5, Lorg/spongycastle/math/ec/ECPoint$Fp;

    invoke-virtual {v4, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v6, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-boolean v4, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v5, v3, v2, v1, v4}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v5

    :cond_10
    :goto_4
    return-object v0

    .line 1147
    :cond_11
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'e\' cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public twice()Lorg/spongycastle/math/ec/ECPoint;
    .locals 15

    .line 882
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 887
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v2

    .line 889
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 890
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 892
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 895
    :cond_1
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v1

    .line 897
    iget-object v3, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    if-eqz v1, :cond_10

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_b

    const/4 v6, 0x2

    if-eq v1, v6, :cond_3

    const/4 v0, 0x4

    if-ne v1, v0, :cond_2

    .line 1002
    invoke-virtual {p0, v5}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-result-object v0

    return-object v0

    .line 1007
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 943
    :cond_3
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v1, v1, v4

    .line 945
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v6

    .line 947
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 948
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 950
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 951
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->negate()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 954
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v11

    const-wide/16 v12, 0x3

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v6, :cond_4

    move-object v9, v1

    goto :goto_0

    .line 956
    :cond_4
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 957
    :goto_0
    invoke-virtual {v3, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v3, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v10, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {p0, v9}, Lorg/spongycastle/math/ec/ECPoint$Fp;->three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 958
    invoke-virtual {v7, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/spongycastle/math/ec/ECPoint$Fp;->four(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    goto :goto_3

    .line 962
    :cond_5
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 963
    invoke-virtual {p0, v11}, Lorg/spongycastle/math/ec/ECPoint$Fp;->three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v11

    if-eqz v6, :cond_6

    .line 966
    invoke-virtual {v11, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    goto :goto_2

    .line 968
    :cond_6
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v12

    if-nez v12, :cond_9

    if-eqz v6, :cond_7

    move-object v12, v1

    goto :goto_1

    .line 970
    :cond_7
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 971
    :goto_1
    invoke-virtual {v12}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 972
    invoke-virtual {v10}, Lorg/spongycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v13

    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v14

    if-ge v13, v14, :cond_8

    .line 974
    invoke-virtual {v12, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v11, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    goto :goto_2

    .line 978
    :cond_8
    invoke-virtual {v12, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v11, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    goto :goto_2

    :cond_9
    move-object v9, v11

    .line 982
    :goto_2
    invoke-virtual {v3, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/spongycastle/math/ec/ECPoint$Fp;->four(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 985
    :goto_3
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {p0, v3}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v7, v10}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 986
    invoke-virtual {v3, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {p0, v8}, Lorg/spongycastle/math/ec/ECPoint$Fp;->eight(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 988
    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    if-nez v6, :cond_a

    .line 991
    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 997
    :cond_a
    new-instance v9, Lorg/spongycastle/math/ec/ECPoint$Fp;

    new-array v5, v5, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v0, v5, v4

    iget-boolean v6, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move-object v1, v9

    move-object v3, v7

    move-object v4, v8

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v9

    .line 913
    :cond_b
    iget-object v1, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    aget-object v1, v1, v4

    .line 915
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v6

    .line 918
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 919
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-nez v8, :cond_c

    if-nez v6, :cond_c

    .line 921
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 923
    :cond_c
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/spongycastle/math/ec/ECPoint$Fp;->three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    if-eqz v6, :cond_d

    move-object v1, v0

    goto :goto_4

    .line 925
    :cond_d
    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    :goto_4
    if-eqz v6, :cond_e

    .line 926
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_5

    :cond_e
    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 927
    :goto_5
    invoke-virtual {v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 928
    invoke-virtual {p0, v3}, Lorg/spongycastle/math/ec/ECPoint$Fp;->four(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 929
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {p0, v3}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 931
    invoke-virtual {p0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 932
    invoke-virtual {v8, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 933
    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 934
    invoke-virtual {v3, v8}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    if-eqz v6, :cond_f

    .line 935
    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_6

    :cond_f
    invoke-virtual {v9}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 936
    :goto_6
    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 938
    new-instance v8, Lorg/spongycastle/math/ec/ECPoint$Fp;

    new-array v5, v5, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v0, v5, v4

    iget-boolean v6, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move-object v1, v8

    move-object v3, v10

    move-object v4, v7

    invoke-direct/range {v1 .. v6}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v8

    .line 903
    :cond_10
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 904
    invoke-virtual {p0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECCurve;->getA()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 905
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {p0, v3}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 906
    invoke-virtual {v3, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 908
    new-instance v1, Lorg/spongycastle/math/ec/ECPoint$Fp;

    iget-boolean v3, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v1, v2, v4, v0, v3}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v1
.end method

.method protected twiceJacobianModified(Z)Lorg/spongycastle/math/ec/ECPoint$Fp;
    .locals 16

    move-object/from16 v0, p0

    .line 1322
    iget-object v1, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v2, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object v3, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->zs:[Lorg/spongycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1324
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1325
    invoke-virtual {v0, v6}, Lorg/spongycastle/math/ec/ECPoint$Fp;->three(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1326
    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1327
    invoke-virtual {v7, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1328
    invoke-virtual {v1, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1329
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1330
    invoke-virtual {v2}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1331
    invoke-virtual {v0, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1332
    invoke-virtual {v1, v12}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v6, v1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v13

    if-eqz p1, :cond_0

    .line 1333
    invoke-virtual {v2, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1334
    :goto_0
    invoke-virtual {v3}, Lorg/spongycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v7, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1336
    :goto_1
    new-instance v2, Lorg/spongycastle/math/ec/ECPoint$Fp;

    invoke-virtual/range {p0 .. p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v11

    const/4 v3, 0x2

    new-array v14, v3, [Lorg/spongycastle/math/ec/ECFieldElement;

    aput-object v7, v14, v4

    const/4 v3, 0x1

    aput-object v1, v14, v3

    iget-boolean v15, v0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move-object v10, v2

    invoke-direct/range {v10 .. v15}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v2
.end method

.method public twicePlus(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;
    .locals 8

    if-ne p0, p1, :cond_0

    .line 1016
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->threeTimes()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 1018
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 1022
    :cond_1
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1024
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 1027
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1028
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object p1

    .line 1033
    :cond_3
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->getCurve()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v1

    .line 1034
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v0, 0x4

    if-eq v2, v0, :cond_4

    .line 1084
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twice()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECPoint;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 v0, 0x0

    .line 1080
    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lorg/spongycastle/math/ec/ECPoint$Fp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/spongycastle/math/ec/ECPoint$Fp;->add(Lorg/spongycastle/math/ec/ECPoint;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 1040
    :cond_5
    iget-object v2, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1041
    iget-object v3, p1, Lorg/spongycastle/math/ec/ECPoint;->x:Lorg/spongycastle/math/ec/ECFieldElement;

    iget-object p1, p1, Lorg/spongycastle/math/ec/ECPoint;->y:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 1043
    invoke-virtual {v3, v2}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {p1, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    .line 1045
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1047
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1050
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->threeTimes()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    :cond_6
    return-object p0

    .line 1062
    :cond_7
    invoke-virtual {v4}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->square()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1063
    invoke-virtual {p0, v2}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1064
    invoke-virtual {v6}, Lorg/spongycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1066
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/ECCurve;->getInfinity()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1

    .line 1069
    :cond_8
    invoke-virtual {v6, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1070
    invoke-virtual {v7}, Lorg/spongycastle/math/ec/ECFieldElement;->invert()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1071
    invoke-virtual {v6, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    .line 1072
    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/ECPoint$Fp;->two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v7}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1073
    invoke-virtual {v4, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {p1, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {v5, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    .line 1074
    invoke-virtual {v2, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/spongycastle/math/ec/ECFieldElement;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement;->subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1076
    new-instance v2, Lorg/spongycastle/math/ec/ECPoint$Fp;

    iget-boolean v3, p0, Lorg/spongycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v2, v1, p1, v0, v3}, Lorg/spongycastle/math/ec/ECPoint$Fp;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v2
.end method

.method protected two(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    .line 1237
    invoke-virtual {p1, p1}, Lorg/spongycastle/math/ec/ECFieldElement;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    return-object p1
.end method

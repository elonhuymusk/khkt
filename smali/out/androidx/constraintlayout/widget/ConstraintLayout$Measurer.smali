.class Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
.super Ljava/lang/Object;
.source "ConstraintLayout.java"

# interfaces
.implements Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Measurer"
.end annotation


# instance fields
.field layout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field layoutHeightSpec:I

.field layoutWidthSpec:I

.field paddingBottom:I

.field paddingHeight:I

.field paddingTop:I

.field paddingWidth:I

.field final synthetic this$0:Landroidx/constraintlayout/widget/ConstraintLayout;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 3
    .param p1, "this$0"    # Landroidx/constraintlayout/widget/ConstraintLayout;
    .param p2, "l"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 617
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->this$0:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-object p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 619
    return-void
.end method


# virtual methods
.method public captureLayoutInfos(IIIIII)V
    .registers 7
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I
    .param p3, "top"    # I
    .param p4, "bottom"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 609
    iput p3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingTop:I

    .line 610
    iput p4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingBottom:I

    .line 611
    iput p5, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    .line 612
    iput p6, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingHeight:I

    .line 613
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 614
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 615
    return-void
.end method

.method public final didMeasures()V
    .registers 6

    .line 857
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 858
    .local v0, "widgetsCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1e

    .line 859
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 860
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v3, :cond_1b

    .line 861
    move-object v3, v2

    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/Placeholder;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 858
    .end local v2    # "child":Landroid/view/View;
    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 865
    .end local v1    # "i":I
    :cond_1e
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 866
    .local v1, "helperCount":I
    if-lez v1, :cond_41

    .line 867
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2b
    if-ge v2, v1, :cond_41

    .line 868
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 869
    .local v3, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostMeasure(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 867
    .end local v3    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 872
    .end local v2    # "i":I
    :cond_41
    return-void
.end method

.method public final measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V
    .registers 32
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "measure"    # Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 625
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-nez v1, :cond_9

    .line 626
    return-void

    .line 628
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1f

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInPlaceholder()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 629
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 630
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 631
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 632
    return-void

    .line 643
    :cond_1f
    iget-object v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 644
    .local v3, "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget-object v4, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 646
    .local v4, "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 647
    .local v6, "horizontalDimension":I
    iget v7, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 649
    .local v7, "verticalDimension":I
    const/4 v8, 0x0

    .line 650
    .local v8, "horizontalSpec":I
    const/4 v9, 0x0

    .line 652
    .local v9, "verticalSpec":I
    iget v10, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingTop:I

    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingBottom:I

    add-int/2addr v10, v11

    .line 653
    .local v10, "heightPadding":I
    iget v11, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->paddingWidth:I

    .line 655
    .local v11, "widthPadding":I
    const/4 v12, 0x0

    .line 656
    .local v12, "didHorizontalWrap":Z
    const/4 v13, 0x0

    .line 658
    .local v13, "didVerticalWrap":Z
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getCompanionWidget()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/View;

    .line 660
    .local v14, "child":Landroid/view/View;
    sget-object v15, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v16

    aget v15, v15, v16

    const/16 v18, 0x3

    const/16 v19, 0x2

    packed-switch v15, :pswitch_data_304

    move/from16 v20, v8

    .end local v8    # "horizontalSpec":I
    .local v20, "horizontalSpec":I
    goto/16 :goto_d0

    .line 680
    .end local v20    # "horizontalSpec":I
    .restart local v8    # "horizontalSpec":I
    :pswitch_4b
    iget v15, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    const/4 v5, -0x2

    invoke-static {v15, v11, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v8

    .line 681
    const/4 v12, 0x1

    .line 682
    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v15, 0x1

    if-ne v5, v15, :cond_5a

    const/4 v5, 0x1

    goto :goto_5b

    :cond_5a
    const/4 v5, 0x0

    .line 683
    .local v5, "shouldDoWrap":Z
    :goto_5b
    iget-object v15, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aput v16, v15, v19

    .line 684
    iget-boolean v15, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-eqz v15, :cond_98

    .line 685
    if-eqz v5, :cond_7c

    iget-object v15, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aget v15, v15, v18

    if-eqz v15, :cond_7c

    iget-object v15, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aget v15, v15, v16

    .line 687
    move/from16 v20, v8

    .end local v8    # "horizontalSpec":I
    .restart local v20    # "horizontalSpec":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v8

    if-ne v15, v8, :cond_82

    goto :goto_7e

    .line 685
    .end local v20    # "horizontalSpec":I
    .restart local v8    # "horizontalSpec":I
    :cond_7c
    move/from16 v20, v8

    .line 687
    .end local v8    # "horizontalSpec":I
    .restart local v20    # "horizontalSpec":I
    :goto_7e
    instance-of v8, v14, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v8, :cond_84

    :cond_82
    const/4 v8, 0x1

    goto :goto_85

    :cond_84
    const/4 v8, 0x0

    .line 690
    .local v8, "useCurrent":Z
    :goto_85
    if-eqz v5, :cond_89

    if-eqz v8, :cond_9c

    .line 691
    :cond_89
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v15

    move/from16 v21, v5

    const/high16 v5, 0x40000000    # 2.0f

    .end local v5    # "shouldDoWrap":Z
    .local v21, "shouldDoWrap":Z
    invoke-static {v15, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    .line 692
    .end local v20    # "horizontalSpec":I
    .local v15, "horizontalSpec":I
    const/4 v12, 0x0

    move v8, v15

    goto :goto_d0

    .line 684
    .end local v15    # "horizontalSpec":I
    .end local v21    # "shouldDoWrap":Z
    .restart local v5    # "shouldDoWrap":Z
    .local v8, "horizontalSpec":I
    :cond_98
    move/from16 v21, v5

    move/from16 v20, v8

    .line 699
    .end local v5    # "shouldDoWrap":Z
    .end local v8    # "horizontalSpec":I
    .restart local v20    # "horizontalSpec":I
    :cond_9c
    move/from16 v8, v20

    goto :goto_d0

    .line 674
    .end local v20    # "horizontalSpec":I
    .restart local v8    # "horizontalSpec":I
    :pswitch_9f
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    .line 675
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalMargin()I

    move-result v15

    add-int/2addr v15, v11

    .line 674
    move/from16 v20, v8

    const/4 v8, -0x1

    .end local v8    # "horizontalSpec":I
    .restart local v20    # "horizontalSpec":I
    invoke-static {v5, v15, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 676
    .end local v20    # "horizontalSpec":I
    .local v5, "horizontalSpec":I
    iget-object v15, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v8, v15, v19

    .line 678
    move v8, v5

    goto :goto_d0

    .line 667
    .end local v5    # "horizontalSpec":I
    .restart local v8    # "horizontalSpec":I
    :pswitch_b3
    move/from16 v20, v8

    .end local v8    # "horizontalSpec":I
    .restart local v20    # "horizontalSpec":I
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutWidthSpec:I

    const/4 v8, -0x2

    invoke-static {v5, v11, v8}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 668
    .end local v20    # "horizontalSpec":I
    .restart local v5    # "horizontalSpec":I
    const/4 v12, 0x1

    .line 669
    iget-object v15, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v8, v15, v19

    .line 671
    move v8, v5

    goto :goto_d0

    .line 662
    .end local v5    # "horizontalSpec":I
    .restart local v8    # "horizontalSpec":I
    :pswitch_c3
    move/from16 v20, v8

    .end local v8    # "horizontalSpec":I
    .restart local v20    # "horizontalSpec":I
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 663
    .end local v20    # "horizontalSpec":I
    .restart local v8    # "horizontalSpec":I
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v6, v5, v19

    .line 665
    nop

    .line 699
    :goto_d0
    sget-object v5, Landroidx/constraintlayout/widget/ConstraintLayout$1;->$SwitchMap$androidx$constraintlayout$solver$widgets$ConstraintWidget$DimensionBehaviour:[I

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->ordinal()I

    move-result v15

    aget v5, v5, v15

    packed-switch v5, :pswitch_data_310

    move/from16 v20, v6

    .end local v6    # "horizontalDimension":I
    .local v20, "horizontalDimension":I
    goto/16 :goto_15f

    .line 720
    .end local v20    # "horizontalDimension":I
    .restart local v6    # "horizontalDimension":I
    :pswitch_df
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    const/4 v15, -0x2

    invoke-static {v5, v10, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 722
    const/4 v13, 0x1

    .line 723
    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v15, 0x1

    if-ne v5, v15, :cond_ee

    const/4 v5, 0x1

    goto :goto_ef

    :cond_ee
    const/4 v5, 0x0

    .line 724
    .local v5, "shouldDoWrap":Z
    :goto_ef
    iget-object v15, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aput v16, v15, v18

    .line 725
    iget-boolean v15, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-eqz v15, :cond_12b

    .line 726
    if-eqz v5, :cond_110

    iget-object v15, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aget v15, v15, v19

    if-eqz v15, :cond_110

    iget-object v15, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v17, 0x1

    aget v15, v15, v17

    .line 728
    move/from16 v20, v6

    .end local v6    # "horizontalDimension":I
    .restart local v20    # "horizontalDimension":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    if-ne v15, v6, :cond_116

    goto :goto_112

    .line 726
    .end local v20    # "horizontalDimension":I
    .restart local v6    # "horizontalDimension":I
    :cond_110
    move/from16 v20, v6

    .line 728
    .end local v6    # "horizontalDimension":I
    .restart local v20    # "horizontalDimension":I
    :goto_112
    instance-of v6, v14, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v6, :cond_118

    :cond_116
    const/4 v6, 0x1

    goto :goto_119

    :cond_118
    const/4 v6, 0x0

    .line 730
    .local v6, "useCurrent":Z
    :goto_119
    if-eqz v5, :cond_11d

    if-eqz v6, :cond_15f

    .line 731
    :cond_11d
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v15

    move/from16 v17, v5

    const/high16 v5, 0x40000000    # 2.0f

    .end local v5    # "shouldDoWrap":Z
    .local v17, "shouldDoWrap":Z
    invoke-static {v15, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 732
    const/4 v13, 0x0

    goto :goto_15f

    .line 725
    .end local v17    # "shouldDoWrap":Z
    .end local v20    # "horizontalDimension":I
    .restart local v5    # "shouldDoWrap":Z
    .local v6, "horizontalDimension":I
    :cond_12b
    move/from16 v17, v5

    move/from16 v20, v6

    .end local v5    # "shouldDoWrap":Z
    .end local v6    # "horizontalDimension":I
    .restart local v17    # "shouldDoWrap":Z
    .restart local v20    # "horizontalDimension":I
    goto :goto_15f

    .line 714
    .end local v17    # "shouldDoWrap":Z
    .end local v20    # "horizontalDimension":I
    .restart local v6    # "horizontalDimension":I
    :pswitch_130
    move/from16 v20, v6

    .end local v6    # "horizontalDimension":I
    .restart local v20    # "horizontalDimension":I
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    .line 715
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalMargin()I

    move-result v6

    add-int/2addr v6, v10

    .line 714
    const/4 v15, -0x1

    invoke-static {v5, v6, v15}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 716
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v15, v5, v18

    .line 718
    goto :goto_15f

    .line 706
    .end local v20    # "horizontalDimension":I
    .restart local v6    # "horizontalDimension":I
    :pswitch_143
    move/from16 v20, v6

    .end local v6    # "horizontalDimension":I
    .restart local v20    # "horizontalDimension":I
    iget v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;->layoutHeightSpec:I

    const/4 v6, -0x2

    invoke-static {v5, v10, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v9

    .line 708
    const/4 v13, 0x1

    .line 709
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v6, v5, v18

    .line 711
    goto :goto_15f

    .line 701
    .end local v20    # "horizontalDimension":I
    .restart local v6    # "horizontalDimension":I
    :pswitch_152
    move/from16 v20, v6

    .end local v6    # "horizontalDimension":I
    .restart local v20    # "horizontalDimension":I
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 702
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v7, v5, v18

    .line 704
    nop

    .line 739
    :cond_15f
    :goto_15f
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_165

    const/4 v5, 0x1

    goto :goto_166

    :cond_165
    const/4 v5, 0x0

    .line 740
    .local v5, "horizontalMatchConstraints":Z
    :goto_166
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v6, :cond_16c

    const/4 v6, 0x1

    goto :goto_16d

    :cond_16c
    const/4 v6, 0x0

    .line 742
    .local v6, "verticalMatchConstraints":Z
    :goto_16d
    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v4, v15, :cond_178

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v4, v15, :cond_176

    goto :goto_178

    :cond_176
    const/4 v15, 0x0

    goto :goto_179

    :cond_178
    :goto_178
    const/4 v15, 0x1

    .line 744
    .local v15, "verticalDimensionKnown":Z
    :goto_179
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v0, :cond_184

    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v0, :cond_182

    goto :goto_184

    :cond_182
    const/4 v0, 0x0

    goto :goto_185

    :cond_184
    :goto_184
    const/4 v0, 0x1

    .line 746
    .local v0, "horizontalDimensionKnown":Z
    :goto_185
    const/16 v17, 0x0

    if-eqz v5, :cond_193

    move-object/from16 v21, v3

    .end local v3    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .local v21, "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v3, v3, v17

    if-lez v3, :cond_195

    const/4 v3, 0x1

    goto :goto_196

    .end local v21    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v3    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_193
    move-object/from16 v21, v3

    .end local v3    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v21    # "horizontalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_195
    const/4 v3, 0x0

    .line 747
    .local v3, "horizontalUseRatio":Z
    :goto_196
    if-eqz v6, :cond_1a2

    move-object/from16 v22, v4

    .end local v4    # "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .local v22, "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget v4, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v4, v4, v17

    if-lez v4, :cond_1a4

    const/4 v4, 0x1

    goto :goto_1a5

    .end local v22    # "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v4    # "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_1a2
    move-object/from16 v22, v4

    .end local v4    # "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .restart local v22    # "verticalBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_1a4
    const/4 v4, 0x0

    .line 749
    .local v4, "verticalUseRatio":Z
    :goto_1a5
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move/from16 v23, v7

    .end local v7    # "verticalDimension":I
    .local v23, "verticalDimension":I
    move-object/from16 v7, v17

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 751
    .local v7, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    const/16 v17, 0x0

    .line 752
    .local v17, "width":I
    const/16 v24, 0x0

    .line 753
    .local v24, "height":I
    const/16 v25, 0x0

    .line 755
    .local v25, "baseline":I
    move/from16 v26, v10

    .end local v10    # "heightPadding":I
    .local v26, "heightPadding":I
    iget-boolean v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useCurrentDimensions:Z

    if-nez v10, :cond_1d8

    if-eqz v5, :cond_1d8

    iget v10, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v10, :cond_1d8

    if-eqz v6, :cond_1d8

    iget v10, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eqz v10, :cond_1c8

    goto :goto_1d8

    :cond_1c8
    move/from16 v28, v3

    move/from16 v27, v5

    move/from16 v3, v17

    move/from16 v5, v24

    const/16 v16, 0x0

    move/from16 v24, v6

    move/from16 v6, v25

    goto/16 :goto_2d1

    .line 759
    :cond_1d8
    :goto_1d8
    instance-of v10, v14, Landroidx/constraintlayout/widget/VirtualLayout;

    if-eqz v10, :cond_1ec

    instance-of v10, v1, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v10, :cond_1ec

    .line 760
    move-object v10, v1

    check-cast v10, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    .line 761
    .local v10, "layout":Landroidx/constraintlayout/solver/widgets/VirtualLayout;
    move/from16 v27, v5

    .end local v5    # "horizontalMatchConstraints":Z
    .local v27, "horizontalMatchConstraints":Z
    move-object v5, v14

    check-cast v5, Landroidx/constraintlayout/widget/VirtualLayout;

    invoke-virtual {v5, v10, v8, v9}, Landroidx/constraintlayout/widget/VirtualLayout;->onMeasure(Landroidx/constraintlayout/solver/widgets/VirtualLayout;II)V

    .line 762
    .end local v10    # "layout":Landroidx/constraintlayout/solver/widgets/VirtualLayout;
    goto :goto_1f1

    .line 759
    .end local v27    # "horizontalMatchConstraints":Z
    .restart local v5    # "horizontalMatchConstraints":Z
    :cond_1ec
    move/from16 v27, v5

    .line 763
    .end local v5    # "horizontalMatchConstraints":Z
    .restart local v27    # "horizontalMatchConstraints":Z
    invoke-virtual {v14, v8, v9}, Landroid/view/View;->measure(II)V

    .line 766
    :goto_1f1
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 767
    .local v5, "w":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    .line 768
    .local v10, "h":I
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v25

    .line 770
    move/from16 v28, v5

    .line 771
    .end local v17    # "width":I
    .local v28, "width":I
    move/from16 v17, v10

    .line 778
    .end local v24    # "height":I
    .local v17, "height":I
    if-eqz v12, :cond_210

    .line 779
    move/from16 v24, v6

    .end local v6    # "verticalMatchConstraints":Z
    .local v24, "verticalMatchConstraints":Z
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aput v5, v6, v16

    .line 780
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v10, v6, v19

    goto :goto_21c

    .line 782
    .end local v24    # "verticalMatchConstraints":Z
    .restart local v6    # "verticalMatchConstraints":Z
    :cond_210
    move/from16 v24, v6

    const/16 v16, 0x0

    .end local v6    # "verticalMatchConstraints":Z
    .restart local v24    # "verticalMatchConstraints":Z
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v6, v16

    .line 783
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v6, v19

    .line 785
    :goto_21c
    if-eqz v13, :cond_22b

    .line 786
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v19, 0x1

    aput v10, v6, v19

    .line 787
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v5, v6, v18

    const/16 v16, 0x0

    goto :goto_237

    .line 789
    :cond_22b
    const/16 v19, 0x1

    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    const/16 v16, 0x0

    aput v16, v6, v19

    .line 790
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->wrapMeasure:[I

    aput v16, v6, v18

    .line 793
    :goto_237
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    if-lez v6, :cond_248

    .line 794
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    move/from16 v18, v8

    move/from16 v8, v28

    .end local v28    # "width":I
    .local v8, "width":I
    .local v18, "horizontalSpec":I
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v28

    move/from16 v8, v28

    .end local v8    # "width":I
    .restart local v28    # "width":I
    goto :goto_24c

    .line 793
    .end local v18    # "horizontalSpec":I
    .local v8, "horizontalSpec":I
    :cond_248
    move/from16 v18, v8

    move/from16 v8, v28

    .line 796
    .end local v28    # "width":I
    .local v8, "width":I
    .restart local v18    # "horizontalSpec":I
    :goto_24c
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    if-lez v6, :cond_256

    .line 797
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 799
    :cond_256
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    if-lez v6, :cond_267

    .line 800
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    move/from16 v19, v9

    move/from16 v9, v17

    .end local v17    # "height":I
    .local v9, "height":I
    .local v19, "verticalSpec":I
    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v9, v17

    .end local v9    # "height":I
    .restart local v17    # "height":I
    goto :goto_26b

    .line 799
    .end local v19    # "verticalSpec":I
    .local v9, "verticalSpec":I
    :cond_267
    move/from16 v19, v9

    move/from16 v9, v17

    .line 802
    .end local v17    # "height":I
    .local v9, "height":I
    .restart local v19    # "verticalSpec":I
    :goto_26b
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    if-lez v6, :cond_275

    .line 803
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 806
    :cond_275
    if-eqz v3, :cond_287

    if-eqz v15, :cond_287

    .line 807
    iget v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 808
    .local v6, "ratio":F
    move/from16 v28, v3

    .end local v3    # "horizontalUseRatio":Z
    .local v28, "horizontalUseRatio":Z
    int-to-float v3, v9

    mul-float v3, v3, v6

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v3, v3, v17

    float-to-int v3, v3

    .line 809
    .end local v6    # "ratio":F
    .end local v8    # "width":I
    .local v3, "width":I
    move v8, v3

    goto :goto_297

    .line 806
    .end local v28    # "horizontalUseRatio":Z
    .local v3, "horizontalUseRatio":Z
    .restart local v8    # "width":I
    :cond_287
    move/from16 v28, v3

    .line 809
    .end local v3    # "horizontalUseRatio":Z
    .restart local v28    # "horizontalUseRatio":Z
    if-eqz v4, :cond_297

    if-eqz v0, :cond_297

    .line 810
    iget v3, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    .line 811
    .local v3, "ratio":F
    int-to-float v6, v8

    div-float/2addr v6, v3

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v6, v6, v17

    float-to-int v6, v6

    move v9, v6

    .line 814
    .end local v3    # "ratio":F
    :cond_297
    :goto_297
    if-ne v5, v8, :cond_2a5

    if-eq v10, v9, :cond_29c

    goto :goto_2a5

    :cond_29c
    move v3, v8

    move v5, v9

    move/from16 v8, v18

    move/from16 v9, v19

    move/from16 v6, v25

    goto :goto_2d1

    .line 815
    :cond_2a5
    :goto_2a5
    if-eq v5, v8, :cond_2ae

    .line 816
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v8, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .end local v18    # "horizontalSpec":I
    .local v6, "horizontalSpec":I
    goto :goto_2b2

    .line 815
    .end local v6    # "horizontalSpec":I
    .restart local v18    # "horizontalSpec":I
    :cond_2ae
    const/high16 v3, 0x40000000    # 2.0f

    move/from16 v6, v18

    .line 818
    .end local v18    # "horizontalSpec":I
    .restart local v6    # "horizontalSpec":I
    :goto_2b2
    if-eq v10, v9, :cond_2b9

    .line 819
    invoke-static {v9, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .end local v19    # "verticalSpec":I
    .local v3, "verticalSpec":I
    goto :goto_2bb

    .line 818
    .end local v3    # "verticalSpec":I
    .restart local v19    # "verticalSpec":I
    :cond_2b9
    move/from16 v3, v19

    .line 821
    .end local v19    # "verticalSpec":I
    .restart local v3    # "verticalSpec":I
    :goto_2bb
    invoke-virtual {v14, v6, v3}, Landroid/view/View;->measure(II)V

    .line 822
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 823
    .end local v8    # "width":I
    .local v17, "width":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 824
    .end local v9    # "height":I
    .local v8, "height":I
    invoke-virtual {v14}, Landroid/view/View;->getBaseline()I

    move-result v25

    move v9, v3

    move v5, v8

    move/from16 v3, v17

    move v8, v6

    move/from16 v6, v25

    .line 833
    .end local v10    # "h":I
    .end local v17    # "width":I
    .end local v25    # "baseline":I
    .local v3, "width":I
    .local v5, "height":I
    .local v6, "baseline":I
    .local v8, "horizontalSpec":I
    .local v9, "verticalSpec":I
    :goto_2d1
    const/4 v10, -0x1

    if-eq v6, v10, :cond_2d6

    const/4 v10, 0x1

    goto :goto_2d7

    :cond_2d6
    const/4 v10, 0x0

    .line 835
    .local v10, "hasBaseline":Z
    :goto_2d7
    move/from16 v17, v0

    .end local v0    # "horizontalDimensionKnown":Z
    .local v17, "horizontalDimensionKnown":Z
    iget v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    if-ne v3, v0, :cond_2e4

    iget v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    if-eq v5, v0, :cond_2e2

    goto :goto_2e4

    :cond_2e2
    const/4 v0, 0x0

    goto :goto_2e5

    :cond_2e4
    :goto_2e4
    const/4 v0, 0x1

    :goto_2e5
    iput-boolean v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 837
    iget-boolean v0, v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    if-eqz v0, :cond_2ec

    .line 838
    const/4 v10, 0x1

    .line 840
    :cond_2ec
    if-eqz v10, :cond_2fa

    const/4 v0, -0x1

    if-eq v6, v0, :cond_2fa

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v0

    if-eq v0, v6, :cond_2fa

    .line 841
    const/4 v0, 0x1

    iput-boolean v0, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 843
    :cond_2fa
    iput v3, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    .line 844
    iput v5, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    .line 845
    iput-boolean v10, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    .line 846
    iput v6, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    .line 853
    return-void

    nop

    :pswitch_data_304
    .packed-switch 0x1
        :pswitch_c3
        :pswitch_b3
        :pswitch_9f
        :pswitch_4b
    .end packed-switch

    :pswitch_data_310
    .packed-switch 0x1
        :pswitch_152
        :pswitch_143
        :pswitch_130
        :pswitch_df
    .end packed-switch
.end method

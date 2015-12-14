//
//  ViewController.swift
//  JMWaterFlow
//
//  Created by Jimmy on 15/10/11.
//  Copyright © 2015年 Jimmy. All rights reserved.
//

import UIKit

class WaterFlowViewController: UICollectionViewController, WaterFlowViewLayoutDelegate
{
    //MARK:属性
    
    private let ReuseIdentifier = "ReuseIdentifier"
    
    let layout = WaterFlowViewLayout()
    
    //构造方法
    init()
    {
        super.init(collectionViewLayout: layout)
    }

    
    //必须实现
    required init?(coder aDecoder: NSCoder)
    {
        fatalError("init(coder:) has not been implemented")
    }

    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //背景色
        collectionView?.backgroundColor = UIColor.whiteColor()
        //注册cell
        collectionView?.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: ReuseIdentifier)
        
        let Margin:CGFloat = 8;
        
        /// 瀑布流四周的间距
        layout.sectionInsert = UIEdgeInsets(top: Margin, left: Margin, bottom: Margin, right: Margin)
        
        /// 瀑布流列数
        layout.column = 5
        
        /// 列间距
        layout.columnMargin = Margin
        
        /// 行间距
        layout.rowMargin = Margin
        
        // 设置代理
        layout.delegate = self
    }
    
    //MARK: 代理方法
    /// 返回每个cell的高度,需要按钮 heightForWidth等比例缩放后的
    func waterFlowViewLayout(waterFlowViewLayout: WaterFlowViewLayout, heightForWidth: CGFloat, atIndexPath: NSIndexPath) -> CGFloat
    {
        return CGFloat(100 + arc4random_uniform(50))
    }

    ///返回cell的数量
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 500
    }
    
    //返回cell
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(ReuseIdentifier, forIndexPath: indexPath)
        
        cell.backgroundColor = UIColor.randomColor()
        
        return cell
    }
    
    
    //隐藏状态栏
    override func prefersStatusBarHidden() -> Bool
    {
        return true
    }
    
}

